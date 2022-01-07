; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_get_register_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_get_register_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32, i32, i32)* @cik_get_register_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_get_register_value(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  br i1 %17, label %18, label %124

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
  switch i32 %33, label %94 [
    i32 181, label %34
    i32 131, label %49
    i32 129, label %64
    i32 128, label %79
  ]

34:                                               ; preds = %31
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %39, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  br label %165

49:                                               ; preds = %31
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %51 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  br label %165

64:                                               ; preds = %31
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %69, i64 %71
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  br label %165

79:                                               ; preds = %31
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %84, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  br label %165

94:                                               ; preds = %31
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = call i32 @mutex_lock(i32* %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %108

103:                                              ; preds = %100, %94
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @amdgpu_gfx_select_se_sh(%struct.amdgpu_device* %104, i32 %105, i32 %106, i32 -1)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @RREG32(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %108
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %118 = call i32 @amdgpu_gfx_select_se_sh(%struct.amdgpu_device* %117, i32 -1, i32 -1, i32 -1)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %6, align 4
  br label %165

124:                                              ; preds = %5
  %125 = load i32, i32* %11, align 4
  switch i32 %125, label %162 [
    i32 180, label %126
    i32 130, label %132
    i32 163, label %138
    i32 162, label %138
    i32 151, label %138
    i32 140, label %138
    i32 137, label %138
    i32 136, label %138
    i32 135, label %138
    i32 134, label %138
    i32 133, label %138
    i32 132, label %138
    i32 161, label %138
    i32 160, label %138
    i32 159, label %138
    i32 158, label %138
    i32 157, label %138
    i32 156, label %138
    i32 155, label %138
    i32 154, label %138
    i32 153, label %138
    i32 152, label %138
    i32 150, label %138
    i32 149, label %138
    i32 148, label %138
    i32 147, label %138
    i32 146, label %138
    i32 145, label %138
    i32 144, label %138
    i32 143, label %138
    i32 142, label %138
    i32 141, label %138
    i32 139, label %138
    i32 138, label %138
    i32 179, label %150
    i32 178, label %150
    i32 171, label %150
    i32 170, label %150
    i32 169, label %150
    i32 168, label %150
    i32 167, label %150
    i32 166, label %150
    i32 165, label %150
    i32 164, label %150
    i32 177, label %150
    i32 176, label %150
    i32 175, label %150
    i32 174, label %150
    i32 173, label %150
    i32 172, label %150
  ]

126:                                              ; preds = %124
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %6, align 4
  br label %165

132:                                              ; preds = %124
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %134 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %6, align 4
  br label %165

138:                                              ; preds = %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124
  %139 = load i32, i32* %11, align 4
  %140 = sub nsw i32 %139, 163
  store i32 %140, i32* %15, align 4
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %6, align 4
  br label %165

150:                                              ; preds = %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124, %124
  %151 = load i32, i32* %11, align 4
  %152 = sub nsw i32 %151, 179
  store i32 %152, i32* %15, align 4
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %6, align 4
  br label %165

162:                                              ; preds = %124
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @RREG32(i32 %163)
  store i32 %164, i32* %6, align 4
  br label %165

165:                                              ; preds = %162, %150, %138, %132, %126, %119, %79, %64, %49, %34
  %166 = load i32, i32* %6, align 4
  ret i32 %166
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
