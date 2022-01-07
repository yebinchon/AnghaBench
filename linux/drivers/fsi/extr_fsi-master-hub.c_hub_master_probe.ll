; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-hub.c_hub_master_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-hub.c_hub_master_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsi_device = type { i32 }
%struct.fsi_master_hub = type { i32, %struct.TYPE_4__, %struct.fsi_device*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.device* }

@FSI_MVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"hub version %08x (%d links)\0A\00", align 1
@FSI_HUB_LINK_OFFSET = common dso_local global i32 0, align 4
@FSI_HUB_LINK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"can't claim slave address range for links\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hub_master_release = common dso_local global i32 0, align 4
@hub_master_read = common dso_local global i32 0, align 4
@hub_master_write = common dso_local global i32 0, align 4
@hub_master_break = common dso_local global i32 0, align 4
@hub_master_link_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hub_master_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_master_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fsi_device*, align 8
  %5 = alloca %struct.fsi_master_hub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.fsi_device* @to_fsi_dev(%struct.device* %10)
  store %struct.fsi_device* %11, %struct.fsi_device** %4, align 8
  %12 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %13 = load i32, i32* @FSI_MVER, align 4
  %14 = call i32 @fsi_device_read(%struct.fsi_device* %12, i32 %13, i32* %8, i32 4)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %2, align 4
  br label %126

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %7, align 4
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %30 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FSI_HUB_LINK_OFFSET, align 4
  %33 = load i32, i32* @FSI_HUB_LINK_SIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = call i32 @fsi_slave_claim_range(i32 %31, i32 %32, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %2, align 4
  br label %126

43:                                               ; preds = %19
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.fsi_master_hub* @kzalloc(i32 64, i32 %44)
  store %struct.fsi_master_hub* %45, %struct.fsi_master_hub** %5, align 8
  %46 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %47 = icmp ne %struct.fsi_master_hub* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %116

51:                                               ; preds = %43
  %52 = load i32, i32* @FSI_HUB_LINK_OFFSET, align 4
  %53 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %54 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @FSI_HUB_LINK_SIZE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %59 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %61 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %62 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %61, i32 0, i32 2
  store %struct.fsi_device* %60, %struct.fsi_device** %62, align 8
  %63 = load %struct.device*, %struct.device** %3, align 8
  %64 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %65 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store %struct.device* %63, %struct.device** %67, align 8
  %68 = load i32, i32* @hub_master_release, align 4
  %69 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %70 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call i32 @dev_of_node(%struct.device* %73)
  %75 = call i32 @of_node_get(i32 %74)
  %76 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %77 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %82 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @hub_master_read, align 4
  %85 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %86 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @hub_master_write, align 4
  %89 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %90 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 8
  %92 = load i32, i32* @hub_master_break, align 4
  %93 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %94 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* @hub_master_link_enable, align 4
  %97 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %98 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.device*, %struct.device** %3, align 8
  %101 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %102 = call i32 @dev_set_drvdata(%struct.device* %100, %struct.fsi_master_hub* %101)
  %103 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %104 = call i32 @hub_master_init(%struct.fsi_master_hub* %103)
  %105 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %106 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %105, i32 0, i32 1
  %107 = call i32 @fsi_master_register(%struct.TYPE_4__* %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %51
  br label %116

111:                                              ; preds = %51
  %112 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %5, align 8
  %113 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = call i32 @get_device(%struct.TYPE_3__* %114)
  store i32 0, i32* %2, align 4
  br label %126

116:                                              ; preds = %110, %48
  %117 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %118 = getelementptr inbounds %struct.fsi_device, %struct.fsi_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @FSI_HUB_LINK_OFFSET, align 4
  %121 = load i32, i32* @FSI_HUB_LINK_SIZE, align 4
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 %121, %122
  %124 = call i32 @fsi_slave_release_range(i32 %119, i32 %120, i32 %123)
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %116, %111, %39, %17
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.fsi_device* @to_fsi_dev(%struct.device*) #1

declare dso_local i32 @fsi_device_read(%struct.fsi_device*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @fsi_slave_claim_range(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.fsi_master_hub* @kzalloc(i32, i32) #1

declare dso_local i32 @of_node_get(i32) #1

declare dso_local i32 @dev_of_node(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.fsi_master_hub*) #1

declare dso_local i32 @hub_master_init(%struct.fsi_master_hub*) #1

declare dso_local i32 @fsi_master_register(%struct.TYPE_4__*) #1

declare dso_local i32 @get_device(%struct.TYPE_3__*) #1

declare dso_local i32 @fsi_slave_release_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
