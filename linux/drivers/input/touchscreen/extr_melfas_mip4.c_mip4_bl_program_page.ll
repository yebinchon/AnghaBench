; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_bl_program_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_melfas_mip4.c_mip4_bl_program_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mip4_ts = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Writing page @%#06x (%d)\0A\00", align 1
@MIP4_BL_PAGE_SIZE = common dso_local global i32 0, align 4
@MIP4_BL_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid page length: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MIP4_R0_BOOT = common dso_local global i32 0, align 4
@MIP4_R1_BOOT_TARGET_ADDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to send write page address: %d\0A\00", align 1
@MIP4_R1_BOOT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to send write page size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"writing chunk at %#04x (size %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to read chunk at %#04x (size %d): %d\0A\00", align 1
@MIP4_R1_BOOT_CMD = common dso_local global i32 0, align 4
@MIP4_BOOT_CMD_PROGRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to send 'write' command: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mip4_ts*, i32, i32*, i32, i32)* @mip4_bl_program_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip4_bl_program_page(%struct.mip4_ts* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mip4_ts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mip4_ts* %0, %struct.mip4_ts** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %18 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MIP4_BL_PAGE_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %30 = srem i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %5
  %33 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %34 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %216

41:                                               ; preds = %27
  %42 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %43 = add nsw i32 2, %42
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @kmalloc(i32 %43, i32 %44)
  store i32* %45, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %216

51:                                               ; preds = %41
  %52 = load i32, i32* @MIP4_R0_BOOT, align 4
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 %52, i32* %53, align 16
  %54 = load i32, i32* @MIP4_R1_BOOT_TARGET_ADDR, align 4
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  %58 = call i32 @put_unaligned_le32(i32 %56, i32* %57)
  %59 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %60 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %63 = call i32 @i2c_master_send(%struct.TYPE_2__* %61, i32* %62, i32 6)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 6
  br i1 %65, label %66, label %82

66:                                               ; preds = %51
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %15, align 4
  br label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %71, %69
  %75 = phi i32 [ %70, %69 ], [ %73, %71 ]
  store i32 %75, i32* %16, align 4
  %76 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %77 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %16, align 4
  %81 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %206

82:                                               ; preds = %51
  %83 = load i32, i32* @MIP4_R0_BOOT, align 4
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 %83, i32* %84, align 16
  %85 = load i32, i32* @MIP4_R1_BOOT_SIZE, align 4
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  %89 = call i32 @put_unaligned_le32(i32 %87, i32* %88)
  %90 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %91 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %94 = call i32 @i2c_master_send(%struct.TYPE_2__* %92, i32* %93, i32 6)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 6
  br i1 %96, label %97, label %113

97:                                               ; preds = %82
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  br label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %104, %102 ]
  store i32 %106, i32* %16, align 4
  %107 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %108 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %16, align 4
  %112 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %206

113:                                              ; preds = %82
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %169, %113
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %173

118:                                              ; preds = %114
  %119 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %120 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %14, align 4
  %124 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %125 = call i32 @dev_dbg(i32* %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @put_unaligned_be16(i32 %128, i32* %129)
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %138 = call i32 @memcpy(i32* %132, i32* %136, i32 %137)
  %139 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %140 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %144 = add nsw i32 2, %143
  %145 = call i32 @i2c_master_send(%struct.TYPE_2__* %141, i32* %142, i32 %144)
  store i32 %145, i32* %15, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %148 = add nsw i32 2, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %118
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %15, align 4
  br label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EIO, align 4
  %157 = sub nsw i32 0, %156
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %157, %155 ]
  store i32 %159, i32* %16, align 4
  %160 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %161 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %160, i32 0, i32 0
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %166 = load i32, i32* %16, align 4
  %167 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %163, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %164, i32 %165, i32 %166)
  br label %206

168:                                              ; preds = %118
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* @MIP4_BL_PACKET_SIZE, align 4
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %14, align 4
  br label %114

173:                                              ; preds = %114
  %174 = load i32, i32* @MIP4_R0_BOOT, align 4
  %175 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  store i32 %174, i32* %175, align 16
  %176 = load i32, i32* @MIP4_R1_BOOT_CMD, align 4
  %177 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  store i32 %176, i32* %177, align 4
  %178 = load i32, i32* @MIP4_BOOT_CMD_PROGRAM, align 4
  %179 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  store i32 %178, i32* %179, align 8
  %180 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %181 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %180, i32 0, i32 0
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %184 = call i32 @i2c_master_send(%struct.TYPE_2__* %182, i32* %183, i32 3)
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 3
  br i1 %186, label %187, label %203

187:                                              ; preds = %173
  %188 = load i32, i32* %15, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i32, i32* %15, align 4
  br label %195

192:                                              ; preds = %187
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  br label %195

195:                                              ; preds = %192, %190
  %196 = phi i32 [ %191, %190 ], [ %194, %192 ]
  store i32 %196, i32* %16, align 4
  %197 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %198 = getelementptr inbounds %struct.mip4_ts, %struct.mip4_ts* %197, i32 0, i32 0
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  %201 = load i32, i32* %16, align 4
  %202 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %200, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  br label %206

203:                                              ; preds = %173
  %204 = load %struct.mip4_ts*, %struct.mip4_ts** %7, align 8
  %205 = call i32 @mip4_bl_read_status(%struct.mip4_ts* %204)
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %203, %195, %158, %105, %74
  %207 = load i32*, i32** %13, align 8
  %208 = call i32 @kfree(i32* %207)
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %206
  %212 = load i32, i32* %16, align 4
  br label %214

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %211
  %215 = phi i32 [ %212, %211 ], [ 0, %213 ]
  store i32 %215, i32* %6, align 4
  br label %216

216:                                              ; preds = %214, %48, %32
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @put_unaligned_le32(i32, i32*) #1

declare dso_local i32 @i2c_master_send(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mip4_bl_read_status(%struct.mip4_ts*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
