; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_add_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_dvb_net_add_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net = type { %struct.net_device**, i32, %struct.TYPE_4__* }
%struct.net_device = type { i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dvb_net_priv = type { i32, i32, i32, i32, i64, i64, i32, i8*, i32, %struct.net_device* }

@DVB_NET_FEEDTYPE_MPE = common dso_local global i64 0, align 8
@DVB_NET_FEEDTYPE_ULE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dvb\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@dvb_net_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"dvb%d%u%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dvb%d_%d\00", align 1
@RX_MODE_UNI = common dso_local global i32 0, align 4
@wq_set_multicast_list = common dso_local global i32 0, align 4
@wq_restart_net_feed = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"created network interface %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net*, i8*, i64)* @dvb_net_add_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_net_add_if(%struct.dvb_net* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.dvb_net_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_net* %0, %struct.dvb_net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @DVB_NET_FEEDTYPE_MPE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @DVB_NET_FEEDTYPE_ULE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %157

22:                                               ; preds = %15, %3
  %23 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %24 = call i32 @get_if(%struct.dvb_net* %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %157

29:                                               ; preds = %22
  %30 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %31 = load i32, i32* @dvb_net_setup, align 4
  %32 = call %struct.net_device* @alloc_netdev(i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  store %struct.net_device* %32, %struct.net_device** %8, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = icmp ne %struct.net_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %157

38:                                               ; preds = %29
  %39 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFNAMSIZ, align 4
  %50 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %61, i32 %62)
  br label %78

64:                                               ; preds = %38
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFNAMSIZ, align 4
  %69 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i32, i32, i8*, i32, i32, ...) @snprintf(i32 %67, i32 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %64, %45
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  store i32 6, i32* %80, align 8
  %81 = load %struct.net_device*, %struct.net_device** %8, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %85 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @memcpy(i32 %83, i32 %90, i32 6)
  %92 = load %struct.net_device*, %struct.net_device** %8, align 8
  %93 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %94 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %93, i32 0, i32 0
  %95 = load %struct.net_device**, %struct.net_device*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.net_device*, %struct.net_device** %95, i64 %97
  store %struct.net_device* %92, %struct.net_device** %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %8, align 8
  %100 = call %struct.dvb_net_priv* @netdev_priv(%struct.net_device* %99)
  store %struct.dvb_net_priv* %100, %struct.dvb_net_priv** %9, align 8
  %101 = load %struct.net_device*, %struct.net_device** %8, align 8
  %102 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %103 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %102, i32 0, i32 9
  store %struct.net_device* %101, %struct.net_device** %103, align 8
  %104 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %105 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %108 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %111 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %110, i32 0, i32 7
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* @RX_MODE_UNI, align 4
  %113 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %114 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %116 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %118 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %121 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %123 = call i32 @reset_ule(%struct.dvb_net_priv* %122)
  %124 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %125 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %124, i32 0, i32 3
  %126 = load i32, i32* @wq_set_multicast_list, align 4
  %127 = call i32 @INIT_WORK(i32* %125, i32 %126)
  %128 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %129 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %128, i32 0, i32 2
  %130 = load i32, i32* @wq_restart_net_feed, align 4
  %131 = call i32 @INIT_WORK(i32* %129, i32 %130)
  %132 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %9, align 8
  %133 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %132, i32 0, i32 1
  %134 = call i32 @mutex_init(i32* %133)
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.net_device*, %struct.net_device** %8, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.net_device*, %struct.net_device** %8, align 8
  %139 = call i32 @register_netdev(%struct.net_device* %138)
  store i32 %139, i32* %10, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %78
  %142 = load %struct.dvb_net*, %struct.dvb_net** %5, align 8
  %143 = getelementptr inbounds %struct.dvb_net, %struct.dvb_net* %142, i32 0, i32 0
  %144 = load %struct.net_device**, %struct.net_device*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.net_device*, %struct.net_device** %144, i64 %146
  store %struct.net_device* null, %struct.net_device** %147, align 8
  %148 = load %struct.net_device*, %struct.net_device** %8, align 8
  %149 = call i32 @free_netdev(%struct.net_device* %148)
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %4, align 4
  br label %157

151:                                              ; preds = %78
  %152 = load %struct.net_device*, %struct.net_device** %8, align 8
  %153 = getelementptr inbounds %struct.net_device, %struct.net_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %4, align 4
  br label %157

157:                                              ; preds = %151, %141, %35, %26, %19
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @get_if(%struct.dvb_net*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.dvb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @reset_ule(%struct.dvb_net_priv*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
