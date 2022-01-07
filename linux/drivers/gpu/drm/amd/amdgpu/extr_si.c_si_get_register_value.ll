; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_get_register_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_get_register_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32, i32)* @si_get_register_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_get_register_value(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %109

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 0, %21 ], [ %23, %22 ]
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ 0, %28 ], [ %30, %29 ]
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %79 [
    i32 164, label %34
    i32 130, label %49
    i32 128, label %64
  ]

34:                                               ; preds = %31
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %138

49:                                               ; preds = %31
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %138

64:                                               ; preds = %31
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  br label %138

79:                                               ; preds = %31
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 1
  %82 = call i32 @mutex_lock(i32* %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %93

88:                                               ; preds = %85, %79
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @amdgpu_gfx_select_se_sh(%struct.amdgpu_device* %89, i32 %90, i32 %91, i32 -1)
  br label %93

93:                                               ; preds = %88, %85
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @RREG32(i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %93
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %103 = call i32 @amdgpu_gfx_select_se_sh(%struct.amdgpu_device* %102, i32 -1, i32 -1, i32 -1)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %6, align 4
  br label %138

109:                                              ; preds = %5
  %110 = load i32, i32* %11, align 4
  switch i32 %110, label %135 [
    i32 163, label %111
    i32 129, label %117
    i32 162, label %123
    i32 161, label %123
    i32 150, label %123
    i32 139, label %123
    i32 136, label %123
    i32 135, label %123
    i32 134, label %123
    i32 133, label %123
    i32 132, label %123
    i32 131, label %123
    i32 160, label %123
    i32 159, label %123
    i32 158, label %123
    i32 157, label %123
    i32 156, label %123
    i32 155, label %123
    i32 154, label %123
    i32 153, label %123
    i32 152, label %123
    i32 151, label %123
    i32 149, label %123
    i32 148, label %123
    i32 147, label %123
    i32 146, label %123
    i32 145, label %123
    i32 144, label %123
    i32 143, label %123
    i32 142, label %123
    i32 141, label %123
    i32 140, label %123
    i32 138, label %123
    i32 137, label %123
  ]

111:                                              ; preds = %109
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %6, align 4
  br label %138

117:                                              ; preds = %109
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %6, align 4
  br label %138

123:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 162
  store i32 %125, i32* %15, align 4
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %6, align 4
  br label %138

135:                                              ; preds = %109
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @RREG32(i32 %136)
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %135, %123, %117, %111, %104, %64, %49, %34
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_gfx_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
