; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_hsi_char.c_hsc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hsc_client_data = type { %struct.TYPE_3__, %struct.hsc_channel*, %struct.hsi_client*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hsc_channel = type { i32, %struct.hsc_client_data*, %struct.hsi_client* }
%struct.hsi_client = type { i32 }

@__const.hsc_probe.devname = private unnamed_addr constant [9 x i8] c"hsi_char\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hsc_major = common dso_local global i64 0, align 8
@HSC_DEVS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Device %s allocation failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"minor\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"major\00", align 1
@hsc_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Could not add char device %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hsc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsc_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca [9 x i8], align 1
  %5 = alloca %struct.hsc_client_data*, align 8
  %6 = alloca %struct.hsc_channel*, align 8
  %7 = alloca %struct.hsi_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %12 = bitcast [9 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.hsc_probe.devname, i32 0, i32 0), i64 9, i1 false)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.hsi_client* @to_hsi_client(%struct.device* %13)
  store %struct.hsi_client* %14, %struct.hsi_client** %7, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.hsc_client_data* @kzalloc(i32 32, i32 %15)
  store %struct.hsc_client_data* %16, %struct.hsc_client_data** %5, align 8
  %17 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %18 = icmp ne %struct.hsc_client_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %24 = call i32 @hsi_id(%struct.hsi_client* %23)
  %25 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %26 = call i32 @hsi_port_id(%struct.hsi_client* %25)
  %27 = call i32 @HSC_BASEMINOR(i32 %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* @hsc_major, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @HSC_DEVS, align 4
  %33 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %34 = call i32 @alloc_chrdev_region(i32* %9, i32 %31, i32 %32, i8* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @MAJOR(i32 %38)
  store i64 %39, i64* @hsc_major, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %49

41:                                               ; preds = %22
  %42 = load i64, i64* @hsc_major, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @MKDEV(i64 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @HSC_DEVS, align 4
  %47 = getelementptr inbounds [9 x i8], [9 x i8]* %4, i64 0, i64 0
  %48 = call i32 @register_chrdev_region(i32 %45, i32 %46, i8* %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %41, %40
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load i64, i64* @hsc_major, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %58)
  br label %118

60:                                               ; preds = %49
  %61 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %62 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %61, i32 0, i32 3
  %63 = call i32 @mutex_init(i32* %62)
  %64 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %65 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %66 = call i32 @hsi_client_set_drvdata(%struct.hsi_client* %64, %struct.hsc_client_data* %65)
  %67 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %68 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %67, i32 0, i32 0
  %69 = call i32 @cdev_init(%struct.TYPE_3__* %68, i32* @hsc_fops)
  %70 = load i32, i32* @THIS_MODULE, align 4
  %71 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %72 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %75 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %76 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %75, i32 0, i32 2
  store %struct.hsi_client* %74, %struct.hsi_client** %76, align 8
  store i32 0, i32* %11, align 4
  %77 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %78 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %77, i32 0, i32 1
  %79 = load %struct.hsc_channel*, %struct.hsc_channel** %78, align 8
  store %struct.hsc_channel* %79, %struct.hsc_channel** %6, align 8
  br label %80

80:                                               ; preds = %96, %60
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @HSC_DEVS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load %struct.hsc_channel*, %struct.hsc_channel** %6, align 8
  %86 = call i32 @hsc_channel_init(%struct.hsc_channel* %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.hsc_channel*, %struct.hsc_channel** %6, align 8
  %89 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.hsi_client*, %struct.hsi_client** %7, align 8
  %91 = load %struct.hsc_channel*, %struct.hsc_channel** %6, align 8
  %92 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %91, i32 0, i32 2
  store %struct.hsi_client* %90, %struct.hsi_client** %92, align 8
  %93 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %94 = load %struct.hsc_channel*, %struct.hsc_channel** %6, align 8
  %95 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %94, i32 0, i32 1
  store %struct.hsc_client_data* %93, %struct.hsc_client_data** %95, align 8
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = load %struct.hsc_channel*, %struct.hsc_channel** %6, align 8
  %100 = getelementptr inbounds %struct.hsc_channel, %struct.hsc_channel* %99, i32 1
  store %struct.hsc_channel* %100, %struct.hsc_channel** %6, align 8
  br label %80

101:                                              ; preds = %80
  %102 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %103 = getelementptr inbounds %struct.hsc_client_data, %struct.hsc_client_data* %102, i32 0, i32 0
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @HSC_DEVS, align 4
  %106 = call i32 @cdev_add(%struct.TYPE_3__* %103, i32 %104, i32 %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load %struct.device*, %struct.device** %3, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %114

113:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %122

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @HSC_DEVS, align 4
  %117 = call i32 @unregister_chrdev_region(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %52
  %119 = load %struct.hsc_client_data*, %struct.hsc_client_data** %5, align 8
  %120 = call i32 @kfree(%struct.hsc_client_data* %119)
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %113, %19
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.hsi_client* @to_hsi_client(%struct.device*) #2

declare dso_local %struct.hsc_client_data* @kzalloc(i32, i32) #2

declare dso_local i32 @HSC_BASEMINOR(i32, i32) #2

declare dso_local i32 @hsi_id(%struct.hsi_client*) #2

declare dso_local i32 @hsi_port_id(%struct.hsi_client*) #2

declare dso_local i32 @alloc_chrdev_region(i32*, i32, i32, i8*) #2

declare dso_local i64 @MAJOR(i32) #2

declare dso_local i32 @MKDEV(i64, i32) #2

declare dso_local i32 @register_chrdev_region(i32, i32, i8*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @hsi_client_set_drvdata(%struct.hsi_client*, %struct.hsc_client_data*) #2

declare dso_local i32 @cdev_init(%struct.TYPE_3__*, i32*) #2

declare dso_local i32 @hsc_channel_init(%struct.hsc_channel*) #2

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #2

declare dso_local i32 @unregister_chrdev_region(i32, i32) #2

declare dso_local i32 @kfree(%struct.hsc_client_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
