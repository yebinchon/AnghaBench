; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_iproc_get_tsc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bcm_iproc_tsc.c_iproc_get_tsc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.iproc_ts_priv = type { %struct.TYPE_2__ }

@iproc_default_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"scanning_period\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"scanning_period (%u) must be [1-256]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"debounce_timeout\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"debounce_timeout (%u) must be [0-255]\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"settling_timeout\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"settling_timeout (%u) must be [0-11]\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"touch_timeout\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"touch_timeout (%u) must be [0-255]\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"average_data\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"average_data (%u) must be [0-8]\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"fifo_threshold\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"fifo_threshold (%u)) must be [0-31]\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"touchscreen-size-x\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"touchscreen-size-y\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-x\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"touchscreen-fuzz-y\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-x\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"touchscreen-inverted-y\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.iproc_ts_priv*)* @iproc_get_tsc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_get_tsc_config(%struct.device* %0, %struct.iproc_ts_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.iproc_ts_priv*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.iproc_ts_priv* %1, %struct.iproc_ts_priv** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %6, align 8
  %11 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %12 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %11, i32 0, i32 0
  %13 = bitcast %struct.TYPE_2__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.TYPE_2__* @iproc_default_config to i8*), i64 56, i1 false)
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i64 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %7)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 256
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %21
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %159

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %36 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %38

38:                                               ; preds = %33, %17
  %39 = load %struct.device_node*, %struct.device_node** %6, align 8
  %40 = call i64 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %7)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 255
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %159

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %54 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %38
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call i64 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 11
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %159

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %72 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  br label %74

74:                                               ; preds = %69, %56
  %75 = load %struct.device_node*, %struct.device_node** %6, align 8
  %76 = call i64 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %7)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = icmp sgt i32 %79, 255
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @dev_err(%struct.device* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %159

87:                                               ; preds = %78
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %90 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %74
  %93 = load %struct.device_node*, %struct.device_node** %6, align 8
  %94 = call i64 @of_property_read_u32(%struct.device_node* %93, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %7)
  %95 = icmp sge i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = icmp sgt i32 %97, 8
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %159

105:                                              ; preds = %96
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %108 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  store i32 %106, i32* %109, align 8
  br label %110

110:                                              ; preds = %105, %92
  %111 = load %struct.device_node*, %struct.device_node** %6, align 8
  %112 = call i64 @of_property_read_u32(%struct.device_node* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32* %7)
  %113 = icmp sge i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %110
  %115 = load i32, i32* %7, align 4
  %116 = icmp sgt i32 %115, 31
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load %struct.device*, %struct.device** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dev_err(%struct.device* %118, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %159

123:                                              ; preds = %114
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %126 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 5
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %110
  %129 = load %struct.device_node*, %struct.device_node** %6, align 8
  %130 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %131 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 6
  %133 = call i64 @of_property_read_u32(%struct.device_node* %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %132)
  %134 = load %struct.device_node*, %struct.device_node** %6, align 8
  %135 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %136 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 7
  %138 = call i64 @of_property_read_u32(%struct.device_node* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32* %137)
  %139 = load %struct.device_node*, %struct.device_node** %6, align 8
  %140 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %141 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 8
  %143 = call i64 @of_property_read_u32(%struct.device_node* %139, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32* %142)
  %144 = load %struct.device_node*, %struct.device_node** %6, align 8
  %145 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %146 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 9
  %148 = call i64 @of_property_read_u32(%struct.device_node* %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32* %147)
  %149 = load %struct.device_node*, %struct.device_node** %6, align 8
  %150 = call i8* @of_property_read_bool(%struct.device_node* %149, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %151 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %152 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 11
  store i8* %150, i8** %153, align 8
  %154 = load %struct.device_node*, %struct.device_node** %6, align 8
  %155 = call i8* @of_property_read_bool(%struct.device_node* %154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %156 = load %struct.iproc_ts_priv*, %struct.iproc_ts_priv** %5, align 8
  %157 = getelementptr inbounds %struct.iproc_ts_priv, %struct.iproc_ts_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 10
  store i8* %155, i8** %158, align 8
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %128, %117, %99, %81, %63, %45, %27, %16
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
