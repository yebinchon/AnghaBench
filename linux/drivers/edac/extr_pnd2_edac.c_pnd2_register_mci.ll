; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_pnd2_register_mci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_pnd2_register_mci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (%struct.mem_ctl_info*)*, i32, i32, i32 }
%struct.mem_ctl_info = type { i8*, i32, i32, %struct.pnd2_pvt* }
%struct.pnd2_pvt = type { i32 }
%struct.edac_mc_layer = type { i32, i32, i32 }

@ops = common dso_local global %struct.TYPE_2__* null, align 8
@EDAC_MC_LAYER_CHANNEL = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_SLOT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Pondicherry2\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"MC: failed edac_mc_add_mc()\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info**)* @pnd2_register_mci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnd2_register_mci(%struct.mem_ctl_info** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info**, align 8
  %4 = alloca [2 x %struct.edac_mc_layer], align 16
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.pnd2_pvt*, align 8
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info** %0, %struct.mem_ctl_info*** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = call i32 (...) %10()
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %79

16:                                               ; preds = %1
  %17 = load i32, i32* @EDAC_MC_LAYER_CHANNEL, align 4
  %18 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 0
  %19 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 0
  %24 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 0
  %26 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %25, i32 0, i32 0
  store i32 0, i32* %26, align 16
  %27 = load i32, i32* @EDAC_MC_LAYER_SLOT, align 4
  %28 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 1
  %29 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 1
  %34 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 1
  %36 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(%struct.edac_mc_layer* %37)
  %39 = getelementptr inbounds [2 x %struct.edac_mc_layer], [2 x %struct.edac_mc_layer]* %4, i64 0, i64 0
  %40 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 0, i32 %38, %struct.edac_mc_layer* %39, i32 4)
  store %struct.mem_ctl_info* %40, %struct.mem_ctl_info** %5, align 8
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %42 = icmp ne %struct.mem_ctl_info* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %16
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %79

46:                                               ; preds = %16
  %47 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %48 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %47, i32 0, i32 3
  %49 = load %struct.pnd2_pvt*, %struct.pnd2_pvt** %48, align 8
  store %struct.pnd2_pvt* %49, %struct.pnd2_pvt** %6, align 8
  %50 = load %struct.pnd2_pvt*, %struct.pnd2_pvt** %6, align 8
  %51 = call i32 @memset(%struct.pnd2_pvt* %50, i32 0, i32 4)
  %52 = load i32, i32* @EDAC_MOD_STR, align 4
  %53 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %54 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %59 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %61 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ops, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32 (%struct.mem_ctl_info*)*, i32 (%struct.mem_ctl_info*)** %63, align 8
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %66 = call i32 %64(%struct.mem_ctl_info* %65)
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %68 = call i64 @edac_mc_add_mc(%struct.mem_ctl_info* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %46
  %71 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %73 = call i32 @edac_mc_free(%struct.mem_ctl_info* %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %79

76:                                               ; preds = %46
  %77 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %78 = load %struct.mem_ctl_info**, %struct.mem_ctl_info*** %3, align 8
  store %struct.mem_ctl_info* %77, %struct.mem_ctl_info** %78, align 8
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %70, %43, %14
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, %struct.edac_mc_layer*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.edac_mc_layer*) #1

declare dso_local i32 @memset(%struct.pnd2_pvt*, i32, i32) #1

declare dso_local i64 @edac_mc_add_mc(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
