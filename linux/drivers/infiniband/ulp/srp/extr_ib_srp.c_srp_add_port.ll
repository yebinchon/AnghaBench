; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_add_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_host = type { %struct.TYPE_8__, i32, %struct.srp_device*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }
%struct.srp_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@srp_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"srp-%s-%d\00", align 1
@dev_attr_add_target = common dso_local global i32 0, align 4
@dev_attr_ibdev = common dso_local global i32 0, align 4
@dev_attr_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.srp_host* (%struct.srp_device*, i32)* @srp_add_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.srp_host* @srp_add_port(%struct.srp_device* %0, i32 %1) #0 {
  %3 = alloca %struct.srp_host*, align 8
  %4 = alloca %struct.srp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.srp_host*, align 8
  store %struct.srp_device* %0, %struct.srp_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.srp_host* @kzalloc(i32 48, i32 %7)
  store %struct.srp_host* %8, %struct.srp_host** %6, align 8
  %9 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %10 = icmp ne %struct.srp_host* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.srp_host* null, %struct.srp_host** %3, align 8
  br label %84

12:                                               ; preds = %2
  %13 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %14 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %13, i32 0, i32 6
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %17 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %16, i32 0, i32 5
  %18 = call i32 @spin_lock_init(i32* %17)
  %19 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %20 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %19, i32 0, i32 4
  %21 = call i32 @init_completion(i32* %20)
  %22 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %23 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %22, i32 0, i32 3
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %26 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %27 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %26, i32 0, i32 2
  store %struct.srp_device* %25, %struct.srp_device** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %30 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %32 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  store i32* @srp_class, i32** %33, align 8
  %34 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %35 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %41 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %44 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %43, i32 0, i32 0
  %45 = load %struct.srp_device*, %struct.srp_device** %4, align 8
  %46 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 @dev_name(%struct.TYPE_9__* %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @dev_set_name(%struct.TYPE_8__* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %53 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %52, i32 0, i32 0
  %54 = call i64 @device_register(%struct.TYPE_8__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %12
  br label %81

57:                                               ; preds = %12
  %58 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %59 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %58, i32 0, i32 0
  %60 = call i64 @device_create_file(%struct.TYPE_8__* %59, i32* @dev_attr_add_target)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %77

63:                                               ; preds = %57
  %64 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %65 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %64, i32 0, i32 0
  %66 = call i64 @device_create_file(%struct.TYPE_8__* %65, i32* @dev_attr_ibdev)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %77

69:                                               ; preds = %63
  %70 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %71 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %70, i32 0, i32 0
  %72 = call i64 @device_create_file(%struct.TYPE_8__* %71, i32* @dev_attr_port)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %77

75:                                               ; preds = %69
  %76 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  store %struct.srp_host* %76, %struct.srp_host** %3, align 8
  br label %84

77:                                               ; preds = %74, %68, %62
  %78 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %79 = getelementptr inbounds %struct.srp_host, %struct.srp_host* %78, i32 0, i32 0
  %80 = call i32 @device_unregister(%struct.TYPE_8__* %79)
  br label %81

81:                                               ; preds = %77, %56
  %82 = load %struct.srp_host*, %struct.srp_host** %6, align 8
  %83 = call i32 @kfree(%struct.srp_host* %82)
  store %struct.srp_host* null, %struct.srp_host** %3, align 8
  br label %84

84:                                               ; preds = %81, %75, %11
  %85 = load %struct.srp_host*, %struct.srp_host** %3, align 8
  ret %struct.srp_host* %85
}

declare dso_local %struct.srp_host* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_9__*) #1

declare dso_local i64 @device_register(%struct.TYPE_8__*) #1

declare dso_local i64 @device_create_file(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.srp_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
