; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_hubbub_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_hubbub_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hubbub = type { i32 }
%struct.dc_context = type { i32 }
%struct.dcn20_hubbub = type { %struct.hubbub, %struct.dcn20_vmid* }
%struct.dcn20_vmid = type { i32*, i32*, i32*, %struct.dc_context* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@hubbub_reg = common dso_local global i32 0, align 4
@hubbub_shift = common dso_local global i32 0, align 4
@hubbub_mask = common dso_local global i32 0, align 4
@res_cap_nv10 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@vmid_regs = common dso_local global i32* null, align 8
@vmid_shifts = common dso_local global i32 0, align 4
@vmid_masks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hubbub* @dcn20_hubbub_create(%struct.dc_context* %0) #0 {
  %2 = alloca %struct.hubbub*, align 8
  %3 = alloca %struct.dc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcn20_hubbub*, align 8
  %6 = alloca %struct.dcn20_vmid*, align 8
  store %struct.dc_context* %0, %struct.dc_context** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dcn20_hubbub* @kzalloc(i32 16, i32 %7)
  store %struct.dcn20_hubbub* %8, %struct.dcn20_hubbub** %5, align 8
  %9 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %5, align 8
  %10 = icmp ne %struct.dcn20_hubbub* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.hubbub* null, %struct.hubbub** %2, align 8
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %5, align 8
  %14 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %15 = call i32 @hubbub2_construct(%struct.dcn20_hubbub* %13, %struct.dc_context* %14, i32* @hubbub_reg, i32* @hubbub_shift, i32* @hubbub_mask)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %40, %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @res_cap_nv10, i32 0, i32 0), align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %5, align 8
  %22 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %21, i32 0, i32 1
  %23 = load %struct.dcn20_vmid*, %struct.dcn20_vmid** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dcn20_vmid, %struct.dcn20_vmid* %23, i64 %25
  store %struct.dcn20_vmid* %26, %struct.dcn20_vmid** %6, align 8
  %27 = load %struct.dc_context*, %struct.dc_context** %3, align 8
  %28 = load %struct.dcn20_vmid*, %struct.dcn20_vmid** %6, align 8
  %29 = getelementptr inbounds %struct.dcn20_vmid, %struct.dcn20_vmid* %28, i32 0, i32 3
  store %struct.dc_context* %27, %struct.dc_context** %29, align 8
  %30 = load i32*, i32** @vmid_regs, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.dcn20_vmid*, %struct.dcn20_vmid** %6, align 8
  %35 = getelementptr inbounds %struct.dcn20_vmid, %struct.dcn20_vmid* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.dcn20_vmid*, %struct.dcn20_vmid** %6, align 8
  %37 = getelementptr inbounds %struct.dcn20_vmid, %struct.dcn20_vmid* %36, i32 0, i32 1
  store i32* @vmid_shifts, i32** %37, align 8
  %38 = load %struct.dcn20_vmid*, %struct.dcn20_vmid** %6, align 8
  %39 = getelementptr inbounds %struct.dcn20_vmid, %struct.dcn20_vmid* %38, i32 0, i32 0
  store i32* @vmid_masks, i32** %39, align 8
  br label %40

40:                                               ; preds = %20
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %5, align 8
  %45 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %44, i32 0, i32 0
  store %struct.hubbub* %45, %struct.hubbub** %2, align 8
  br label %46

46:                                               ; preds = %43, %11
  %47 = load %struct.hubbub*, %struct.hubbub** %2, align 8
  ret %struct.hubbub* %47
}

declare dso_local %struct.dcn20_hubbub* @kzalloc(i32, i32) #1

declare dso_local i32 @hubbub2_construct(%struct.dcn20_hubbub*, %struct.dc_context*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
