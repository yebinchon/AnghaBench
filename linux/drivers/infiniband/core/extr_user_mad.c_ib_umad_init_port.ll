; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_ib_umad_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_ib_umad_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_umad_device = type { i32 }
%struct.ib_umad_port = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_10__, i32, i32, i32, %struct.ib_umad_device*, %struct.ib_device* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i8* }

@umad_ida = common dso_local global i32 0, align 4
@IB_UMAD_MAX_PORTS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_UMAD_NUM_FIXED_MINOR = common dso_local global i32 0, align 4
@dynamic_umad_dev = common dso_local global i8* null, align 8
@dynamic_issm_dev = common dso_local global i8* null, align 8
@base_umad_dev = common dso_local global i8* null, align 8
@base_issm_dev = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"umad%d\00", align 1
@umad_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"issm%d\00", align 1
@umad_sm_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, %struct.ib_umad_device*, %struct.ib_umad_port*)* @ib_umad_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umad_init_port(%struct.ib_device* %0, i32 %1, %struct.ib_umad_device* %2, %struct.ib_umad_port* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_umad_device*, align 8
  %9 = alloca %struct.ib_umad_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_umad_device* %2, %struct.ib_umad_device** %8, align 8
  store %struct.ib_umad_port* %3, %struct.ib_umad_port** %9, align 8
  %14 = load i64, i64* @IB_UMAD_MAX_PORTS, align 8
  %15 = sub nsw i64 %14, 1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @ida_alloc_max(i32* @umad_ida, i64 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %151

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %24 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @IB_UMAD_NUM_FIXED_MINOR, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load i8*, i8** @dynamic_umad_dev, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = load i32, i32* @IB_UMAD_NUM_FIXED_MINOR, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr i8, i8* %32, i64 %35
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** @dynamic_issm_dev, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = load i32, i32* @IB_UMAD_NUM_FIXED_MINOR, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr i8, i8* %40, i64 %43
  store i8* %44, i8** %12, align 8
  br label %54

45:                                               ; preds = %21
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** @base_umad_dev, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr i8, i8* %47, i64 %48
  store i8* %49, i8** %11, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** @base_issm_dev, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr i8, i8* %51, i64 %52
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %45, %28
  %55 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %56 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %57 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %56, i32 0, i32 10
  store %struct.ib_device* %55, %struct.ib_device** %57, align 8
  %58 = load %struct.ib_umad_device*, %struct.ib_umad_device** %8, align 8
  %59 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %60 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %59, i32 0, i32 9
  store %struct.ib_umad_device* %58, %struct.ib_umad_device** %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %63 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %65 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %64, i32 0, i32 8
  %66 = call i32 @sema_init(i32* %65, i32 1)
  %67 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %68 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %67, i32 0, i32 7
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %71 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %70, i32 0, i32 6
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %74 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %73, i32 0, i32 2
  %75 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %76 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %77 = call i32 @ib_umad_init_port_dev(%struct.TYPE_9__* %74, %struct.ib_umad_port* %75, %struct.ib_device* %76)
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %80 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %83 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %82, i32 0, i32 2
  %84 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %85 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_set_name(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %89 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %88, i32 0, i32 3
  %90 = call i32 @cdev_init(%struct.TYPE_10__* %89, i32* @umad_fops)
  %91 = load i8*, i8** @THIS_MODULE, align 8
  %92 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %93 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %96 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %95, i32 0, i32 3
  %97 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %98 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %97, i32 0, i32 2
  %99 = call i32 @cdev_device_add(%struct.TYPE_10__* %96, %struct.TYPE_9__* %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %54
  br label %144

103:                                              ; preds = %54
  %104 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %105 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %104, i32 0, i32 4
  %106 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %107 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %108 = call i32 @ib_umad_init_port_dev(%struct.TYPE_9__* %105, %struct.ib_umad_port* %106, %struct.ib_device* %107)
  %109 = load i8*, i8** %12, align 8
  %110 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %111 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  %113 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %114 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %113, i32 0, i32 4
  %115 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %116 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_set_name(%struct.TYPE_9__* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %120 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %119, i32 0, i32 5
  %121 = call i32 @cdev_init(%struct.TYPE_10__* %120, i32* @umad_sm_fops)
  %122 = load i8*, i8** @THIS_MODULE, align 8
  %123 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %124 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i8* %122, i8** %125, align 8
  %126 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %127 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %126, i32 0, i32 5
  %128 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %129 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %128, i32 0, i32 4
  %130 = call i32 @cdev_device_add(%struct.TYPE_10__* %127, %struct.TYPE_9__* %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %103
  br label %135

134:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %151

135:                                              ; preds = %133
  %136 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %137 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %136, i32 0, i32 4
  %138 = call i32 @put_device(%struct.TYPE_9__* %137)
  %139 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %140 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %139, i32 0, i32 3
  %141 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %142 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %141, i32 0, i32 2
  %143 = call i32 @cdev_device_del(%struct.TYPE_10__* %140, %struct.TYPE_9__* %142)
  br label %144

144:                                              ; preds = %135, %102
  %145 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  %146 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %145, i32 0, i32 2
  %147 = call i32 @put_device(%struct.TYPE_9__* %146)
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @ida_free(i32* @umad_ida, i32 %148)
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %144, %134, %20
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @ida_alloc_max(i32*, i64, i32) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ib_umad_init_port_dev(%struct.TYPE_9__*, %struct.ib_umad_port*, %struct.ib_device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @cdev_device_add(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @put_device(%struct.TYPE_9__*) #1

declare dso_local i32 @cdev_device_del(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
