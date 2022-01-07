; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_init_csrows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_aspeed_edac.c_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info** }
%struct.csrow_info = type { i32, i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.dimm_info* }
%struct.dimm_info = type { i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"/memory\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"dt: missing /memory node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"dt: failed requesting resource for /memory node\0A\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"dt: /memory node resources: first page r.start=0x%x, resource_size=0x%x, PAGE_SHIFT macro=0x%x\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@aspeed_regmap = common dso_local global i32 0, align 4
@ASPEED_MCR_CONF = common dso_local global i32 0, align 4
@ASPEED_MCR_CONF_DRAM_TYPE = common dso_local global i32 0, align 4
@MEM_DDR4 = common dso_local global i32 0, align 4
@MEM_DDR3 = common dso_local global i32 0, align 4
@EDAC_SECDED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"initialized dimm with first_page=0x%lx and nr_pages=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_csrows(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dimm_info*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.resource, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 1
  %14 = load %struct.csrow_info**, %struct.csrow_info*** %13, align 8
  %15 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %14, i64 0
  %16 = load %struct.csrow_info*, %struct.csrow_info** %15, align 8
  store %struct.csrow_info* %16, %struct.csrow_info** %4, align 8
  %17 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %8, align 8
  %18 = load %struct.device_node*, %struct.device_node** %8, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %22 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %107

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %8, align 8
  %29 = call i32 @of_address_to_resource(%struct.device_node* %28, i32 0, %struct.resource* %9)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.device_node*, %struct.device_node** %8, align 8
  %31 = call i32 @of_node_put(%struct.device_node* %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %36 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %2, align 4
  br label %107

40:                                               ; preds = %27
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %42 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @resource_size(%struct.resource* %9)
  %47 = load i32, i32* @PAGE_SHIFT, align 4
  %48 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %43, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PAGE_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %54 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = call i32 @resource_size(%struct.resource* %9)
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %59 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %65 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @aspeed_regmap, align 4
  %67 = load i32, i32* @ASPEED_MCR_CONF, align 4
  %68 = call i32 @regmap_read(i32 %66, i32 %67, i32* %10)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @ASPEED_MCR_CONF_DRAM_TYPE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %40
  %74 = load i32, i32* @MEM_DDR4, align 4
  br label %77

75:                                               ; preds = %40
  %76 = load i32, i32* @MEM_DDR3, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %6, align 4
  %79 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %80 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.dimm_info*, %struct.dimm_info** %84, align 8
  store %struct.dimm_info* %85, %struct.dimm_info** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.dimm_info*, %struct.dimm_info** %7, align 8
  %88 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @EDAC_SECDED, align 4
  %90 = load %struct.dimm_info*, %struct.dimm_info** %7, align 8
  %91 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %94 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sdiv i32 %92, %95
  %97 = load %struct.dimm_info*, %struct.dimm_info** %7, align 8
  %98 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %100 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %103 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %77, %34, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
