; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_mmhubbub_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_mmhubbub_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }
%struct.resource_pool = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dcn20_mmhubbub = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DC: failed to create mcif_wb20!\0A\00", align 1
@mcif_wb20_regs = common dso_local global i32* null, align 8
@mcif_wb20_shift = common dso_local global i32 0, align 4
@mcif_wb20_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcn20_mmhubbub_create(%struct.dc_context* %0, %struct.resource_pool* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_context*, align 8
  %5 = alloca %struct.resource_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dcn20_mmhubbub*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %4, align 8
  store %struct.resource_pool* %1, %struct.resource_pool** %5, align 8
  %9 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %10 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %46, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %18
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.dcn20_mmhubbub* @kzalloc(i32 4, i32 %23)
  store %struct.dcn20_mmhubbub* %24, %struct.dcn20_mmhubbub** %8, align 8
  %25 = load %struct.dcn20_mmhubbub*, %struct.dcn20_mmhubbub** %8, align 8
  %26 = icmp ne %struct.dcn20_mmhubbub* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @dm_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %50

29:                                               ; preds = %22
  %30 = load %struct.dcn20_mmhubbub*, %struct.dcn20_mmhubbub** %8, align 8
  %31 = load %struct.dc_context*, %struct.dc_context** %4, align 8
  %32 = load i32*, i32** @mcif_wb20_regs, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dcn20_mmhubbub_construct(%struct.dcn20_mmhubbub* %30, %struct.dc_context* %31, i32* %35, i32* @mcif_wb20_shift, i32* @mcif_wb20_mask, i32 %36)
  %38 = load %struct.dcn20_mmhubbub*, %struct.dcn20_mmhubbub** %8, align 8
  %39 = getelementptr inbounds %struct.dcn20_mmhubbub, %struct.dcn20_mmhubbub* %38, i32 0, i32 0
  %40 = load %struct.resource_pool*, %struct.resource_pool** %5, align 8
  %41 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %39, i32** %45, align 8
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %18

49:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.dcn20_mmhubbub* @kzalloc(i32, i32) #1

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @dcn20_mmhubbub_construct(%struct.dcn20_mmhubbub*, %struct.dc_context*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
