; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_read_sys_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_gen6_read_sys_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32 }

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
@CAPABILITY_BTN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*)* @cyapa_gen6_read_sys_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen6_read_sys_info(%struct.cyapa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cyapa*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %3, align 8
  %11 = load i32, i32* @PIP_READ_SYS_INFO_RESP_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = mul nuw i64 4, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %18 = load i32, i32* @pip_read_sys_info, align 4
  %19 = load i32, i32* @PIP_READ_SYS_INFO_CMD_LENGTH, align 4
  %20 = load i32, i32* @cyapa_pip_sort_system_info_data, align 4
  %21 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %17, i32 %18, i32 %19, i32* %14, i32* %6, i32 2000, i32 %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul nuw i64 4, %12
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %24, %1
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %33, %32 ], [ %36, %34 ]
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %205

39:                                               ; preds = %24
  %40 = getelementptr inbounds i32, i32* %14, i64 7
  %41 = call i32 @get_unaligned_le16(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PIP_PRODUCT_FAMILY_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @PIP_PRODUCT_FAMILY_TRACKPAD, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %205

50:                                               ; preds = %39
  %51 = getelementptr inbounds i32, i32* %14, i64 67
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PIP_BL_PLATFORM_VER_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* @PIP_BL_PLATFORM_VER_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %58 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = getelementptr inbounds i32, i32* %14, i64 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %62 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds i32, i32* %14, i64 10
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %66 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds i32, i32* %14, i64 33
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %70 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %14, i64 34
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %74 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = getelementptr inbounds i32, i32* %14, i64 35
  %76 = call i32 @get_unaligned_le16(i32* %75)
  %77 = sdiv i32 %76, 100
  %78 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %79 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds i32, i32* %14, i64 37
  %81 = call i32 @get_unaligned_le16(i32* %80)
  %82 = sdiv i32 %81, 100
  %83 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %84 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = getelementptr inbounds i32, i32* %14, i64 39
  %86 = call i32 @get_unaligned_le16(i32* %85)
  %87 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %88 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 4
  %89 = getelementptr inbounds i32, i32* %14, i64 41
  %90 = call i32 @get_unaligned_le16(i32* %89)
  %91 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %92 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds i32, i32* %14, i64 43
  %94 = call i32 @get_unaligned_le16(i32* %93)
  %95 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %96 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds i32, i32* %14, i64 45
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %101 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds i32, i32* %14, i64 46
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 1
  %105 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %106 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %105, i32 0, i32 11
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds i32, i32* %14, i64 70
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 3
  %110 = load i32, i32* @CAPABILITY_BTN_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %113 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %112, i32 0, i32 12
  store i32 %111, i32* %113, align 8
  %114 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %115 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %114, i32 0, i32 13
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = getelementptr inbounds i32, i32* %14, i64 51
  %119 = call i32 @memcpy(i8* %117, i32* %118, i32 5)
  %120 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %121 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %120, i32 0, i32 13
  %122 = load i8*, i8** %121, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 5
  store i8 45, i8* %123, align 1
  %124 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %125 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %124, i32 0, i32 13
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 6
  %128 = getelementptr inbounds i32, i32* %14, i64 56
  %129 = call i32 @memcpy(i8* %127, i32* %128, i32 6)
  %130 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %131 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %130, i32 0, i32 13
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 12
  store i8 45, i8* %133, align 1
  %134 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %135 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %134, i32 0, i32 13
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 13
  %138 = getelementptr inbounds i32, i32* %14, i64 62
  %139 = call i32 @memcpy(i8* %137, i32* %138, i32 2)
  %140 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %141 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %140, i32 0, i32 13
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 15
  store i8 0, i8* %143, align 1
  %144 = getelementptr inbounds i32, i32* %14, i64 68
  %145 = load i32, i32* %144, align 16
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %50
  %149 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %150 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  br label %156

152:                                              ; preds = %50
  %153 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %154 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  br label %156

156:                                              ; preds = %152, %148
  %157 = phi i32 [ %151, %148 ], [ %155, %152 ]
  %158 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %159 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %158, i32 0, i32 14
  store i32 %157, i32* %159, align 8
  %160 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %161 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %160, i32 0, i32 14
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 3
  %164 = and i32 %163, -4
  %165 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %166 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %165, i32 0, i32 15
  store i32 %164, i32* %166, align 4
  %167 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %168 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %201

171:                                              ; preds = %156
  %172 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %173 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %171
  %177 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %178 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %176
  %182 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %183 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %181
  %187 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %188 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %193 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %191
  %197 = load %struct.cyapa*, %struct.cyapa** %3, align 8
  %198 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %196, %191, %186, %181, %176, %171, %156
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %205

204:                                              ; preds = %196
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %205

205:                                              ; preds = %204, %201, %47, %37
  %206 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %2, align 4
  ret i32 %207
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
