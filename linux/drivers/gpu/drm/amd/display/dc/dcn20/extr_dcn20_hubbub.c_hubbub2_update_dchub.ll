; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_update_dchub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_update_dchub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dchub_init_data = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_hubbub = type { i32 }

@DCN_VM_FB_LOCATION_TOP = common dso_local global i32 0, align 4
@FB_TOP = common dso_local global i32 0, align 4
@DCN_VM_FB_LOCATION_BASE = common dso_local global i32 0, align 4
@FB_BASE = common dso_local global i32 0, align 4
@DCN_VM_AGP_BASE = common dso_local global i32 0, align 4
@AGP_BASE = common dso_local global i32 0, align 4
@DCN_VM_AGP_BOT = common dso_local global i32 0, align 4
@AGP_BOT = common dso_local global i32 0, align 4
@DCN_VM_AGP_TOP = common dso_local global i32 0, align 4
@AGP_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub2_update_dchub(%struct.hubbub* %0, %struct.dchub_init_data* %1) #0 {
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dchub_init_data*, align 8
  %5 = alloca %struct.dcn20_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  store %struct.dchub_init_data* %1, %struct.dchub_init_data** %4, align 8
  %6 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %7 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %6)
  store %struct.dcn20_hubbub* %7, %struct.dcn20_hubbub** %5, align 8
  %8 = load i32, i32* @DCN_VM_FB_LOCATION_TOP, align 4
  %9 = call i64 @REG(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %92

12:                                               ; preds = %2
  %13 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %14 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %86 [
    i32 128, label %16
    i32 129, label %49
    i32 130, label %76
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* @DCN_VM_FB_LOCATION_TOP, align 4
  %18 = load i32, i32* @FB_TOP, align 4
  %19 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* @DCN_VM_FB_LOCATION_BASE, align 4
  %21 = load i32, i32* @FB_BASE, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 16777215)
  %23 = load i32, i32* @DCN_VM_AGP_BASE, align 4
  %24 = load i32, i32* @AGP_BASE, align 4
  %25 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %26 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 24
  %29 = call i32 @REG_UPDATE(i32 %23, i32 %24, i32 %28)
  %30 = load i32, i32* @DCN_VM_AGP_BOT, align 4
  %31 = load i32, i32* @AGP_BOT, align 4
  %32 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %33 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 24
  %36 = call i32 @REG_UPDATE(i32 %30, i32 %31, i32 %35)
  %37 = load i32, i32* @DCN_VM_AGP_TOP, align 4
  %38 = load i32, i32* @AGP_TOP, align 4
  %39 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %40 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %43 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sub nsw i32 %45, 1
  %47 = ashr i32 %46, 24
  %48 = call i32 @REG_UPDATE(i32 %37, i32 %38, i32 %47)
  br label %87

49:                                               ; preds = %12
  %50 = load i32, i32* @DCN_VM_AGP_BASE, align 4
  %51 = load i32, i32* @AGP_BASE, align 4
  %52 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %53 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 24
  %56 = call i32 @REG_UPDATE(i32 %50, i32 %51, i32 %55)
  %57 = load i32, i32* @DCN_VM_AGP_BOT, align 4
  %58 = load i32, i32* @AGP_BOT, align 4
  %59 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %60 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 24
  %63 = call i32 @REG_UPDATE(i32 %57, i32 %58, i32 %62)
  %64 = load i32, i32* @DCN_VM_AGP_TOP, align 4
  %65 = load i32, i32* @AGP_TOP, align 4
  %66 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %67 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %70 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = sub nsw i32 %72, 1
  %74 = ashr i32 %73, 24
  %75 = call i32 @REG_UPDATE(i32 %64, i32 %65, i32 %74)
  br label %87

76:                                               ; preds = %12
  %77 = load i32, i32* @DCN_VM_AGP_BASE, align 4
  %78 = load i32, i32* @AGP_BASE, align 4
  %79 = call i32 @REG_UPDATE(i32 %77, i32 %78, i32 0)
  %80 = load i32, i32* @DCN_VM_AGP_BOT, align 4
  %81 = load i32, i32* @AGP_BOT, align 4
  %82 = call i32 @REG_UPDATE(i32 %80, i32 %81, i32 16777215)
  %83 = load i32, i32* @DCN_VM_AGP_TOP, align 4
  %84 = load i32, i32* @AGP_TOP, align 4
  %85 = call i32 @REG_UPDATE(i32 %83, i32 %84, i32 0)
  br label %87

86:                                               ; preds = %12
  br label %87

87:                                               ; preds = %86, %76, %49, %16
  %88 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %89 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %88, i32 0, i32 4
  store i32 1, i32* %89, align 4
  %90 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %91 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %90, i32 0, i32 5
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %11
  ret void
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
