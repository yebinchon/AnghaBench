; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_error_data_from_mce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_get_memory_error_data_from_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i64, i32, i64, %struct.pci_dev*, %struct.TYPE_2__ }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.mce = type { i32, i32, i64, i32 }

@NUM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid channel 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"No get_ha()\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Impossible bank %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"mci socket got corrupted!\00", align 1
@tad_dram_rule = common dso_local global i32* null, align 8
@FULL_MIRRORING = common dso_local global i64 0, align 8
@ADDR_RANGE_MIRRORING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.mce*, i32*, i32*, i64*, i8*)* @get_memory_error_data_from_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memory_error_data_from_mce(%struct.mem_ctl_info* %0, %struct.mce* %1, i32* %2, i32* %3, i64* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_ctl_info*, align 8
  %9 = alloca %struct.mce*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mem_ctl_info*, align 8
  %17 = alloca %struct.sbridge_pvt*, align 8
  %18 = alloca %struct.pci_dev*, align 8
  %19 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %8, align 8
  store %struct.mce* %1, %struct.mce** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i8* %5, i8** %13, align 8
  %20 = load %struct.mce*, %struct.mce** %9, align 8
  %21 = getelementptr inbounds %struct.mce, %struct.mce* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @GET_BITFIELD(i32 %22, i32 0, i32 3)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @NUM_CHANNELS, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %155

33:                                               ; preds = %6
  %34 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %35 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %34, i32 0, i32 0
  %36 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %35, align 8
  store %struct.sbridge_pvt* %36, %struct.sbridge_pvt** %17, align 8
  %37 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %38 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = icmp ne i32 (i32)* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %155

47:                                               ; preds = %33
  %48 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %49 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (i32)*, i32 (i32)** %50, align 8
  %52 = load %struct.mce*, %struct.mce** %9, align 8
  %53 = getelementptr inbounds %struct.mce, %struct.mce* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54)
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %47
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.mce*, %struct.mce** %9, align 8
  %67 = getelementptr inbounds %struct.mce, %struct.mce* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %155

72:                                               ; preds = %60, %47
  %73 = load %struct.mce*, %struct.mce** %9, align 8
  %74 = getelementptr inbounds %struct.mce, %struct.mce* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.mem_ctl_info* @get_mci_for_node_id(i32 %78, i32 %80)
  store %struct.mem_ctl_info* %81, %struct.mem_ctl_info** %16, align 8
  %82 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %16, align 8
  %83 = icmp ne %struct.mem_ctl_info* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %72
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @strcpy(i8* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %7, align 4
  br label %155

89:                                               ; preds = %72
  %90 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %16, align 8
  %91 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %90, i32 0, i32 0
  %92 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %91, align 8
  store %struct.sbridge_pvt* %92, %struct.sbridge_pvt** %17, align 8
  %93 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %94 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %93, i32 0, i32 3
  %95 = load %struct.pci_dev*, %struct.pci_dev** %94, align 8
  store %struct.pci_dev* %95, %struct.pci_dev** %18, align 8
  %96 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %97 = load i32*, i32** @tad_dram_rule, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pci_read_config_dword(%struct.pci_dev* %96, i32 %99, i32* %14)
  %101 = load %struct.mce*, %struct.mce** %9, align 8
  %102 = getelementptr inbounds %struct.mce, %struct.mce* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @TAD_LIMIT(i32 %104)
  %106 = icmp sle i64 %103, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %15, align 4
  %109 = shl i32 1, %108
  %110 = sext i32 %109 to i64
  %111 = load i64*, i64** %12, align 8
  store i64 %110, i64* %111, align 8
  %112 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %113 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FULL_MIRRORING, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %126, label %117

117:                                              ; preds = %89
  %118 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %119 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ADDR_RANGE_MIRRORING, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123, %89
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 2
  %129 = srem i32 %128, 4
  %130 = shl i32 1, %129
  %131 = sext i32 %130 to i64
  %132 = load i64*, i64** %12, align 8
  %133 = load i64, i64* %132, align 8
  %134 = or i64 %133, %131
  store i64 %134, i64* %132, align 8
  %135 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %136 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %135, i32 0, i32 1
  store i32 1, i32* %136, align 8
  br label %140

137:                                              ; preds = %123, %117
  %138 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %139 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %138, i32 0, i32 1
  store i32 0, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %126
  %141 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %17, align 8
  %142 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, 1
  %148 = srem i32 %147, 4
  %149 = shl i32 1, %148
  %150 = sext i32 %149 to i64
  %151 = load i64*, i64** %12, align 8
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %150
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %145, %140
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %154, %84, %64, %42, %27
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @GET_BITFIELD(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local %struct.mem_ctl_info* @get_mci_for_node_id(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @TAD_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
