; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_vce_v1_0.c_vce_v1_0_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.vce_v1_0_fw_signature = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vce_v1_0_load_fw(%struct.radeon_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vce_v1_0_fw_signature*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.vce_v1_0_fw_signature*
  store %struct.vce_v1_0_fw_signature* %15, %struct.vce_v1_0_fw_signature** %6, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %20
    i32 130, label %21
    i32 131, label %21
    i32 132, label %22
  ]

19:                                               ; preds = %2
  store i32 16777236, i32* %7, align 4
  br label %26

20:                                               ; preds = %2
  store i32 16777237, i32* %7, align 4
  br label %26

21:                                               ; preds = %2, %2
  store i32 16777238, i32* %7, align 4
  br label %26

22:                                               ; preds = %2
  store i32 16777239, i32* %7, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %203

26:                                               ; preds = %22, %21, %20, %19
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %30 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %27
  %35 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %36 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %27

51:                                               ; preds = %46, %27
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %54 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = icmp eq i32 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %203

61:                                               ; preds = %51
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 48
  store i32* %63, i32** %5, align 8
  %64 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %65 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %77 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %89 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %101 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %113 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = add nsw i32 %115, 64
  %117 = call i32 @cpu_to_le32(i32 %116)
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 5
  %122 = call i32 @memset(i32* %121, i32 0, i32 44)
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 16
  %125 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %126 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %125, i64 1
  %127 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 2
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, 16
  %133 = call i32 @memcpy(i32* %124, %struct.vce_v1_0_fw_signature* %126, i64 %132)
  %134 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %135 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = add nsw i32 %137, 64
  %139 = sdiv i32 %138, 4
  %140 = load i32*, i32** %5, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  store i32* %142, i32** %5, align 8
  %143 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %144 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %156 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %168 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %167, i32 0, i32 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  store i32 %176, i32* %178, align 4
  %179 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %180 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %5, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.vce_v1_0_fw_signature*, %struct.vce_v1_0_fw_signature** %6, align 8
  %192 = getelementptr inbounds %struct.vce_v1_0_fw_signature, %struct.vce_v1_0_fw_signature* %191, i32 0, i32 0
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @le32_to_cpu(i32 %198)
  %200 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  store i32 %199, i32* %202, align 4
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %61, %58, %23
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.vce_v1_0_fw_signature*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
