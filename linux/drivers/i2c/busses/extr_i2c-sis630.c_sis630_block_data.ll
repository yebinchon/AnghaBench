; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis630.c_sis630_block_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sis630.c_sis630_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@SMB_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"set data 0x%02x\0A\00", align 1
@SMB_BYTE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"start trans len=%d i=%d\0A\00", align 1
@SIS630_BLOCK_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"trans_wait len=%d i=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"clear smbary_sts len=%d i=%d\0A\00", align 1
@SMB_STS = common dso_local global i64 0, align 8
@BYTE_DONE_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"trans_wait failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"block data read len=0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"read i=%d len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %union.i2c_smbus_data*, i32)* @sis630_block_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis630_block_data(%struct.i2c_adapter* %0, %union.i2c_smbus_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %union.i2c_smbus_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %128

15:                                               ; preds = %3
  %16 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %17 = bitcast %union.i2c_smbus_data* %16 to i32**
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 32
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 32, i32* %9, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i64, i64* @SMB_COUNT, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sis630_write(i64 %30, i32 %31)
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %124, %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %127

37:                                               ; preds = %33
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %38, i32 0, i32 0
  %40 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %41 = bitcast %union.i2c_smbus_data* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* @SMB_BYTE, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = srem i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %48, %52
  %54 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %55 = bitcast %union.i2c_smbus_data* %54 to i32**
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @sis630_write(i64 %53, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 8
  br i1 %63, label %71, label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67, %37
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %72, i32 0, i32 0
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %78 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %79 = call i32 @sis630_transaction_start(%struct.i2c_adapter* %77, i32 %78, i32* %11)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %243

84:                                               ; preds = %71
  br label %123

85:                                               ; preds = %67, %64
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = srem i32 %87, 8
  %89 = icmp eq i32 %88, 7
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90, %85
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 8
  br i1 %101, label %102, label %111

102:                                              ; preds = %94
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 0
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i64, i64* @SMB_STS, align 8
  %109 = load i32, i32* @BYTE_DONE_STS, align 4
  %110 = call i32 @sis630_write(i64 %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %94
  %112 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %113 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %114 = call i32 @sis630_transaction_wait(%struct.i2c_adapter* %112, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %127

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122, %84
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %33

127:                                              ; preds = %117, %33
  br label %238

128:                                              ; preds = %3
  store i32 0, i32* %9, align 4
  %129 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %130 = bitcast %union.i2c_smbus_data* %129 to i32**
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 0, i32* %132, align 4
  %133 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %134 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %135 = call i32 @sis630_transaction_start(%struct.i2c_adapter* %133, i32 %134, i32* %11)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %243

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %229, %140
  %142 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %143 = load i32, i32* @SIS630_BLOCK_DATA, align 4
  %144 = call i32 @sis630_transaction_wait(%struct.i2c_adapter* %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %149 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %148, i32 0, i32 0
  %150 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %237

151:                                              ; preds = %141
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %151
  %155 = load i64, i64* @SMB_COUNT, align 8
  %156 = call i8* @sis630_read(i64 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %159 = bitcast %union.i2c_smbus_data* %158 to i32**
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  store i32 %157, i32* %161, align 4
  br label %162

162:                                              ; preds = %154, %151
  %163 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %164 = bitcast %union.i2c_smbus_data* %163 to i32**
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %167, 32
  br i1 %168, label %169, label %174

169:                                              ; preds = %162
  %170 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %171 = bitcast %union.i2c_smbus_data* %170 to i32**
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  store i32 32, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %162
  %175 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %176 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %175, i32 0, i32 0
  %177 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %178 = bitcast %union.i2c_smbus_data* %177 to i32**
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %176, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %215, %174
  %184 = load i32, i32* %8, align 4
  %185 = icmp slt i32 %184, 8
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load i32, i32* %9, align 4
  %188 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %189 = bitcast %union.i2c_smbus_data* %188 to i32**
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %187, %192
  br label %194

194:                                              ; preds = %186, %183
  %195 = phi i1 [ false, %183 ], [ %193, %186 ]
  br i1 %195, label %196, label %220

196:                                              ; preds = %194
  %197 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %198 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %197, i32 0, i32 0
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load i64, i64* @SMB_BYTE, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %202, %204
  %206 = call i8* @sis630_read(i64 %205)
  %207 = ptrtoint i8* %206 to i32
  %208 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %209 = bitcast %union.i2c_smbus_data* %208 to i32**
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  store i32 %207, i32* %214, align 4
  br label %215

215:                                              ; preds = %196
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %183

220:                                              ; preds = %194
  %221 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %222 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %221, i32 0, i32 0
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %8, align 4
  %225 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %222, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %223, i32 %224)
  %226 = load i64, i64* @SMB_STS, align 8
  %227 = load i32, i32* @BYTE_DONE_STS, align 4
  %228 = call i32 @sis630_write(i64 %226, i32 %227)
  br label %229

229:                                              ; preds = %220
  %230 = load i32, i32* %9, align 4
  %231 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %6, align 8
  %232 = bitcast %union.i2c_smbus_data* %231 to i32**
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp slt i32 %230, %235
  br i1 %236, label %141, label %237

237:                                              ; preds = %229, %147
  br label %238

238:                                              ; preds = %237, %127
  %239 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %240 = load i32, i32* %11, align 4
  %241 = call i32 @sis630_transaction_end(%struct.i2c_adapter* %239, i32 %240)
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %238, %138, %82
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i32 @sis630_write(i64, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @sis630_transaction_start(%struct.i2c_adapter*, i32, i32*) #1

declare dso_local i32 @sis630_transaction_wait(%struct.i2c_adapter*, i32) #1

declare dso_local i8* @sis630_read(i64) #1

declare dso_local i32 @sis630_transaction_end(%struct.i2c_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
