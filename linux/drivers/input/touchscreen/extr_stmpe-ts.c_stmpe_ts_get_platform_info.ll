; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmpe-ts.c_stmpe_ts_get_platform_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmpe-ts.c_stmpe_ts_get_platform_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stmpe_touch = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"st,sample-time\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"st,mod-12b\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"st,ref-sel\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"st,adc-freq\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"st,ave-ctrl\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"st,touch-det-delay\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"st,settling\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"st,fraction-z\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"st,i-drive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.stmpe_touch*)* @stmpe_ts_get_platform_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmpe_ts_get_platform_info(%struct.platform_device* %0, %struct.stmpe_touch* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stmpe_touch*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.stmpe_touch* %1, %struct.stmpe_touch** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %94

13:                                               ; preds = %2
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_property_read_u32(%struct.device_node* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %20 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %19, i32 0, i32 5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i8* %18, i8** %22, align 8
  br label %23

23:                                               ; preds = %17, %13
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %30 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i8* %28, i8** %32, align 8
  br label %33

33:                                               ; preds = %27, %23
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %40 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i8* %38, i8** %42, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %6)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %50 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %49, i32 0, i32 5
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = call i32 @of_property_read_u32(%struct.device_node* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %6)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %60 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.device_node*, %struct.device_node** %5, align 8
  %63 = call i32 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %6)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %68 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i32 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %6)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %76 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i32 @of_property_read_u32(%struct.device_node* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %6)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %84 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.device_node*, %struct.device_node** %5, align 8
  %87 = call i32 @of_property_read_u32(%struct.device_node* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %6)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.stmpe_touch*, %struct.stmpe_touch** %4, align 8
  %92 = getelementptr inbounds %struct.stmpe_touch, %struct.stmpe_touch* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %94

94:                                               ; preds = %93, %2
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
