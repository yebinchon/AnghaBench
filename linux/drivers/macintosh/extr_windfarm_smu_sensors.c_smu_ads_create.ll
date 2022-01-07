; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_ads_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_smu_sensors.c_smu_ads_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_ad_sensor = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"temp-sensor\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"CPU T-Diode\00", align 1
@smu_cputemp_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"cpu-temp\00", align 1
@cpudiode = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"wf: cpudiode partition (%02x) not found\0A\00", align 1
@SMU_SDB_CPUDIODE_ID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"current-sensor\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"CPU Current\00", align 1
@smu_cpuamp_ops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"cpu-current\00", align 1
@cpuvcp = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"wf: cpuvcp partition (%02x) not found\0A\00", align 1
@SMU_SDB_CPUVCP_ID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"voltage-sensor\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"CPU Voltage\00", align 1
@smu_cpuvolt_ops = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [12 x i8] c"cpu-voltage\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"power-sensor\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Slots Power\00", align 1
@smu_slotspow_ops = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"slots-power\00", align 1
@slotspow = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [41 x i8] c"wf: slotspow partition (%02x) not found\0A\00", align 1
@SMU_SDB_SLOTSPOW_ID = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smu_ad_sensor* (%struct.device_node*)* @smu_ads_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smu_ad_sensor* @smu_ads_create(%struct.device_node* %0) #0 {
  %2 = alloca %struct.smu_ad_sensor*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.smu_ad_sensor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.smu_ad_sensor* @kmalloc(i32 24, i32 %7)
  store %struct.smu_ad_sensor* %8, %struct.smu_ad_sensor** %4, align 8
  %9 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %10 = icmp eq %struct.smu_ad_sensor* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.smu_ad_sensor* null, %struct.smu_ad_sensor** %2, align 8
  br label %128

12:                                               ; preds = %1
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = call i8* @of_get_property(%struct.device_node* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %125

18:                                               ; preds = %12
  %19 = load %struct.device_node*, %struct.device_node** %3, align 8
  %20 = call i64 @of_node_is_type(%struct.device_node* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %28 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32* @smu_cputemp_ops, i32** %29, align 8
  %30 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %31 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  %33 = load i32*, i32** @cpudiode, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @SMU_SDB_CPUDIODE_ID, align 4
  %37 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  br label %125

38:                                               ; preds = %26
  br label %106

39:                                               ; preds = %22, %18
  %40 = load %struct.device_node*, %struct.device_node** %3, align 8
  %41 = call i64 @of_node_is_type(%struct.device_node* %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %49 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32* @smu_cpuamp_ops, i32** %50, align 8
  %51 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %52 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %53, align 8
  %54 = load i32*, i32** @cpuvcp, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @SMU_SDB_CPUVCP_ID, align 4
  %58 = call i32 @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  br label %125

59:                                               ; preds = %47
  br label %105

60:                                               ; preds = %43, %39
  %61 = load %struct.device_node*, %struct.device_node** %3, align 8
  %62 = call i64 @of_node_is_type(%struct.device_node* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %64
  %69 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %70 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32* @smu_cpuvolt_ops, i32** %71, align 8
  %72 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %73 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8** %74, align 8
  %75 = load i32*, i32** @cpuvcp, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @SMU_SDB_CPUVCP_ID, align 4
  %79 = call i32 @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  br label %125

80:                                               ; preds = %68
  br label %104

81:                                               ; preds = %64, %60
  %82 = load %struct.device_node*, %struct.device_node** %3, align 8
  %83 = call i64 @of_node_is_type(%struct.device_node* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %85
  %90 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %91 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i32* @smu_slotspow_ops, i32** %92, align 8
  %93 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %94 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8** %95, align 8
  %96 = load i32*, i32** @slotspow, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i32, i32* @SMU_SDB_SLOTSPOW_ID, align 4
  %100 = call i32 @DBG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0), i32 %99)
  br label %125

101:                                              ; preds = %89
  br label %103

102:                                              ; preds = %85, %81
  br label %125

103:                                              ; preds = %101
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %59
  br label %106

106:                                              ; preds = %105, %38
  %107 = load %struct.device_node*, %struct.device_node** %3, align 8
  %108 = call i8* @of_get_property(%struct.device_node* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* null)
  %109 = bitcast i8* %108 to i32*
  store i32* %109, i32** %6, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %125

113:                                              ; preds = %106
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %117 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %119 = getelementptr inbounds %struct.smu_ad_sensor, %struct.smu_ad_sensor* %118, i32 0, i32 0
  %120 = call i64 @wf_register_sensor(%struct.TYPE_2__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %125

123:                                              ; preds = %113
  %124 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  store %struct.smu_ad_sensor* %124, %struct.smu_ad_sensor** %2, align 8
  br label %128

125:                                              ; preds = %122, %112, %102, %98, %77, %56, %35, %17
  %126 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %4, align 8
  %127 = call i32 @kfree(%struct.smu_ad_sensor* %126)
  store %struct.smu_ad_sensor* null, %struct.smu_ad_sensor** %2, align 8
  br label %128

128:                                              ; preds = %125, %123, %11
  %129 = load %struct.smu_ad_sensor*, %struct.smu_ad_sensor** %2, align 8
  ret %struct.smu_ad_sensor* %129
}

declare dso_local %struct.smu_ad_sensor* @kmalloc(i32, i32) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_node_is_type(%struct.device_node*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i64 @wf_register_sensor(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.smu_ad_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
