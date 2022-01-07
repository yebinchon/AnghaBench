; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_get_hubp_by_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_get_hubp_by_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.resource_pool = type { i32, %struct.hubp** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hubp* (%struct.resource_pool*, i32)* @get_hubp_by_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hubp* @get_hubp_by_inst(%struct.resource_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct.resource_pool*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.resource_pool* %0, %struct.resource_pool** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %10 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %15 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %14, i32 0, i32 1
  %16 = load %struct.hubp**, %struct.hubp*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hubp*, %struct.hubp** %16, i64 %18
  %20 = load %struct.hubp*, %struct.hubp** %19, align 8
  %21 = getelementptr inbounds %struct.hubp, %struct.hubp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %13
  %26 = load %struct.resource_pool*, %struct.resource_pool** %4, align 8
  %27 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %26, i32 0, i32 1
  %28 = load %struct.hubp**, %struct.hubp*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hubp*, %struct.hubp** %28, i64 %30
  %32 = load %struct.hubp*, %struct.hubp** %31, align 8
  store %struct.hubp* %32, %struct.hubp** %3, align 8
  br label %39

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7

37:                                               ; preds = %7
  %38 = call i32 @ASSERT(i32 0)
  store %struct.hubp* null, %struct.hubp** %3, align 8
  br label %39

39:                                               ; preds = %37, %25
  %40 = load %struct.hubp*, %struct.hubp** %3, align 8
  ret %struct.hubp* %40
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
