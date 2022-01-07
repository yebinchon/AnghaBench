; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_scrub_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_get_scrub_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@F15H_M60H_SCRCTRL = common dso_local global i32 0, align 4
@F17H_SCR_BASE_ADDR = common dso_local global i32 0, align 4
@F17H_SCR_LIMIT_ADDR = common dso_local global i32 0, align 4
@SCRCTRL = common dso_local global i32 0, align 4
@scrubrates = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @get_scrub_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scrub_rate(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  store %struct.amd64_pvt* %9, %struct.amd64_pvt** %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %13 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %57 [
    i32 21, label %15
    i32 23, label %35
    i32 24, label %35
  ]

15:                                               ; preds = %1
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %22 = call i32 @f15h_select_dct(%struct.amd64_pvt* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 96
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @F15H_M60H_SCRCTRL, align 4
  %33 = call i32 @amd64_read_pci_cfg(i32 %31, i32 %32, i32* %6)
  br label %34

34:                                               ; preds = %28, %23
  br label %63

35:                                               ; preds = %1, %1
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %37 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @F17H_SCR_BASE_ADDR, align 4
  %40 = call i32 @amd64_read_pci_cfg(i32 %38, i32 %39, i32* %6)
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BIT(i32 0)
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %47 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @F17H_SCR_LIMIT_ADDR, align 4
  %50 = call i32 @amd64_read_pci_cfg(i32 %48, i32 %49, i32* %6)
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, 15
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 5
  store i32 %54, i32* %6, align 4
  br label %56

55:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %45
  br label %63

57:                                               ; preds = %1
  %58 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %59 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCRCTRL, align 4
  %62 = call i32 @amd64_read_pci_cfg(i32 %60, i32 %61, i32* %6)
  br label %63

63:                                               ; preds = %57, %56, %34
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 31
  store i32 %65, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %88, %63
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @scrubrates, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %5, align 4
  br label %91

87:                                               ; preds = %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %66

91:                                               ; preds = %80, %66
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @f15h_select_dct(%struct.amd64_pvt*, i32) #1

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
