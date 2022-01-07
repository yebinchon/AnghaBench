; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_get_query_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_get_query_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }

@PIP_READ_SYS_INFO_RESP_LENGTH = common dso_local global i32 0, align 4
@pip_read_sys_info = common dso_local global i32 0, align 4
@PIP_READ_SYS_INFO_CMD_LENGTH = common dso_local global i32 0, align 4
@cyapa_pip_sort_system_info_data = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PIP_PRODUCT_FAMILY_MASK = common dso_local global i32 0, align 4
@PIP_PRODUCT_FAMILY_TRACKPAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PIP_BL_PLATFORM_VER_SHIFT = common dso_local global i32 0, align 4
@PIP_BL_PLATFORM_VER_MASK = common dso_local global i32 0, align 4
@CYAPA_GEN5 = common dso_local global i64 0, align 8
@CAPABILITY_BTN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen5_get_query_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_get_query_data(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %10 = load i32, i32* @PIP_READ_SYS_INFO_RESP_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = mul nuw i64 4, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %17 = load i32, i32* @pip_read_sys_info, align 4
  %18 = load i32, i32* @PIP_READ_SYS_INFO_CMD_LENGTH, align 4
  %19 = load i32, i32* @cyapa_pip_sort_system_info_data, align 4
  %20 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %16, i32 %17, i32 %18, i32* %13, i32* %6, i32 2000, i32 %19, i32 0)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = mul nuw i64 4, %11
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i32 [ %32, %31 ], [ %35, %33 ]
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %202

38:                                               ; preds = %23
  %39 = getelementptr inbounds i32, i32* %13, i64 7
  %40 = call i32 @get_unaligned_le16(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PIP_PRODUCT_FAMILY_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PIP_PRODUCT_FAMILY_TRACKPAD, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %202

49:                                               ; preds = %38
  %50 = getelementptr inbounds i32, i32* %13, i64 49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PIP_BL_PLATFORM_VER_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @PIP_BL_PLATFORM_VER_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %57 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %59 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CYAPA_GEN5, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %49
  %64 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %65 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 2
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = getelementptr inbounds i32, i32* %13, i64 15
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %72 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = getelementptr inbounds i32, i32* %13, i64 16
  %74 = load i32, i32* %73, align 16
  %75 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %76 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %86

77:                                               ; preds = %63, %49
  %78 = getelementptr inbounds i32, i32* %13, i64 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %81 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds i32, i32* %13, i64 10
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %85 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %77, %68
  %87 = getelementptr inbounds i32, i32* %13, i64 52
  %88 = load i32, i32* %87, align 16
  %89 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %90 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds i32, i32* %13, i64 53
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %94 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %13, i64 54
  %96 = call i32 @get_unaligned_le16(i32* %95)
  %97 = sdiv i32 %96, 100
  %98 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %99 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds i32, i32* %13, i64 56
  %101 = call i32 @get_unaligned_le16(i32* %100)
  %102 = sdiv i32 %101, 100
  %103 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %104 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = getelementptr inbounds i32, i32* %13, i64 58
  %106 = call i32 @get_unaligned_le16(i32* %105)
  %107 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %108 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = getelementptr inbounds i32, i32* %13, i64 60
  %110 = call i32 @get_unaligned_le16(i32* %109)
  %111 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %112 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds i32, i32* %13, i64 62
  %114 = call i32 @get_unaligned_le16(i32* %113)
  %115 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %116 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = getelementptr inbounds i32, i32* %13, i64 64
  %118 = load i32, i32* %117, align 16
  %119 = and i32 %118, 1
  %120 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %121 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 4
  %122 = getelementptr inbounds i32, i32* %13, i64 65
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 1
  %125 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %126 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 8
  %127 = getelementptr inbounds i32, i32* %13, i64 70
  %128 = load i32, i32* %127, align 8
  %129 = shl i32 %128, 3
  %130 = load i32, i32* @CAPABILITY_BTN_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %133 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 4
  %134 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %135 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %134, i32 0, i32 14
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = getelementptr inbounds i32, i32* %13, i64 33
  %139 = call i32 @memcpy(i8* %137, i32* %138, i32 5)
  %140 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %141 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %140, i32 0, i32 14
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 5
  store i8 45, i8* %143, align 1
  %144 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %145 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %144, i32 0, i32 14
  %146 = load i8*, i8** %145, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 6
  %148 = getelementptr inbounds i32, i32* %13, i64 38
  %149 = call i32 @memcpy(i8* %147, i32* %148, i32 6)
  %150 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %151 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %150, i32 0, i32 14
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 12
  store i8 45, i8* %153, align 1
  %154 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %155 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %154, i32 0, i32 14
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 13
  %158 = getelementptr inbounds i32, i32* %13, i64 44
  %159 = call i32 @memcpy(i8* %157, i32* %158, i32 2)
  %160 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %161 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %160, i32 0, i32 14
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 15
  store i8 0, i8* %163, align 1
  %164 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %165 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %86
  %169 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %170 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %175 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %198

178:                                              ; preds = %173
  %179 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %180 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %179, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %178
  %184 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %185 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %190 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %189, i32 0, i32 9
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %195 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %193, %188, %183, %178, %173, %168, %86
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %202

201:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %202

202:                                              ; preds = %201, %198, %46, %36
  %203 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i32, i32, i32*, i32*, i32, i32, i32) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
