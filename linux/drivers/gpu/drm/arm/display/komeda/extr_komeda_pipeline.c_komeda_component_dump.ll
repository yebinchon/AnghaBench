; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_component_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline.c_komeda_component_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_component = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"\09%s: ID %d-0x%08lx.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\09\09max_active_inputs:%d, supported_inputs: 0x%08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\09\09max_active_outputs:%d, supported_outputs: 0x%08x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_component*)* @komeda_component_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_component_dump(%struct.komeda_component* %0) #0 {
  %2 = alloca %struct.komeda_component*, align 8
  store %struct.komeda_component* %0, %struct.komeda_component** %2, align 8
  %3 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %4 = icmp ne %struct.komeda_component* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %32

6:                                                ; preds = %1
  %7 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %8 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %11 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %14 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %16)
  %18 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %19 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %22 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %26 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.komeda_component*, %struct.komeda_component** %2, align 8
  %29 = getelementptr inbounds %struct.komeda_component, %struct.komeda_component* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
