; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_submit_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm_helpers.c_dm_helpers_submit_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.dc_link = type { %struct.amdgpu_dm_connector* }
%struct.amdgpu_dm_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_command = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.i2c_msg = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to found connector for link!\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_helpers_submit_i2c(%struct.dc_context* %0, %struct.dc_link* %1, %struct.i2c_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dc_context*, align 8
  %6 = alloca %struct.dc_link*, align 8
  %7 = alloca %struct.i2c_command*, align 8
  %8 = alloca %struct.amdgpu_dm_connector*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %5, align 8
  store %struct.dc_link* %1, %struct.dc_link** %6, align 8
  store %struct.i2c_command* %2, %struct.i2c_command** %7, align 8
  %13 = load %struct.dc_link*, %struct.dc_link** %6, align 8
  %14 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %13, i32 0, i32 0
  %15 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %14, align 8
  store %struct.amdgpu_dm_connector* %15, %struct.amdgpu_dm_connector** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %17 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %11, align 4
  %19 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %20 = icmp ne %struct.amdgpu_dm_connector* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %111

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.i2c_msg* @kcalloc(i32 %24, i32 16, i32 %25)
  store %struct.i2c_msg* %26, %struct.i2c_msg** %9, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %28 = icmp ne %struct.i2c_msg* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %111

30:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %94, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %97

35:                                               ; preds = %31
  %36 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %37 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @I2C_M_RD, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  %50 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i64 %52
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 3
  store i32 %49, i32* %54, align 4
  %55 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %56 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 %65
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 2
  store i32 %62, i32* %67, align 4
  %68 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %69 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i64 %78
  %80 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load %struct.i2c_command*, %struct.i2c_command** %7, align 8
  %82 = getelementptr inbounds %struct.i2c_command, %struct.i2c_command* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %89, i64 %91
  %93 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %92, i32 0, i32 0
  store i32 %88, i32* %93, align 4
  br label %94

94:                                               ; preds = %48
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %31

97:                                               ; preds = %31
  %98 = load %struct.amdgpu_dm_connector*, %struct.amdgpu_dm_connector** %8, align 8
  %99 = getelementptr inbounds %struct.amdgpu_dm_connector, %struct.amdgpu_dm_connector* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @i2c_transfer(i32* %101, %struct.i2c_msg* %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %109 = call i32 @kfree(%struct.i2c_msg* %108)
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %97, %29, %21
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.i2c_msg* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @kfree(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
