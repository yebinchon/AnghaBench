; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_spi.c_rmi_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_spi.c_rmi_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_11__, i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, %struct.rmi_device_platform_data* }
%struct.rmi_device_platform_data = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.rmi_spi_xport = type { %struct.TYPE_10__, i32, %struct.spi_device* }
%struct.TYPE_10__ = type { i8*, i32*, %struct.TYPE_11__*, %struct.rmi_device_platform_data }

@SPI_MASTER_HALF_DUPLEX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi_setup failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@rmi_spi_ops = common dso_local global i32 0, align 4
@RMI_SPI_DEFAULT_XFER_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set page select to 0.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"registering SPI-connected sensor\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to register sensor: %d\0A\00", align 1
@rmi_spi_unregister_transport = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @rmi_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.rmi_spi_xport*, align 8
  %5 = alloca %struct.rmi_device_platform_data*, align 8
  %6 = alloca %struct.rmi_device_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %10, align 8
  store %struct.rmi_device_platform_data* %11, %struct.rmi_device_platform_data** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SPI_MASTER_HALF_DUPLEX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %165

23:                                               ; preds = %1
  %24 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.rmi_spi_xport* @devm_kzalloc(%struct.TYPE_11__* %25, i32 64, i32 %26)
  store %struct.rmi_spi_xport* %27, %struct.rmi_spi_xport** %4, align 8
  %28 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %29 = icmp ne %struct.rmi_spi_xport* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %165

33:                                               ; preds = %23
  %34 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %35 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  store %struct.rmi_device_platform_data* %36, %struct.rmi_device_platform_data** %5, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %45 = call i32 @rmi_spi_of_probe(%struct.spi_device* %43, %struct.rmi_device_platform_data* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %165

50:                                               ; preds = %42
  br label %60

51:                                               ; preds = %33
  %52 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %53 = icmp ne %struct.rmi_device_platform_data* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %56 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %6, align 8
  %57 = bitcast %struct.rmi_device_platform_data* %55 to i8*
  %58 = bitcast %struct.rmi_device_platform_data* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 24, i1 false)
  br label %59

59:                                               ; preds = %54, %51
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %62 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %68 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %72 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %75 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %81 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %85 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %79, %73
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = call i32 @spi_setup(%struct.spi_device* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %93 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %92, i32 0, i32 0
  %94 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %165

96:                                               ; preds = %86
  %97 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %98 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.rmi_device_platform_data*, %struct.rmi_device_platform_data** %5, align 8
  %101 = getelementptr inbounds %struct.rmi_device_platform_data, %struct.rmi_device_platform_data* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %104 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %103, i32 0, i32 2
  store %struct.spi_device* %102, %struct.spi_device** %104, align 8
  %105 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %106 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %105, i32 0, i32 1
  %107 = call i32 @mutex_init(i32* %106)
  %108 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %109 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %108, i32 0, i32 0
  %110 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %111 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %112, align 8
  %113 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %114 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %115, align 8
  %116 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %117 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  store i32* @rmi_spi_ops, i32** %118, align 8
  %119 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %120 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %121 = call i32 @spi_set_drvdata(%struct.spi_device* %119, %struct.rmi_spi_xport* %120)
  %122 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %123 = load i32, i32* @RMI_SPI_DEFAULT_XFER_BUF_SIZE, align 4
  %124 = call i32 @rmi_spi_manage_pools(%struct.rmi_spi_xport* %122, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %96
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %165

129:                                              ; preds = %96
  %130 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %131 = call i32 @rmi_set_page(%struct.rmi_spi_xport* %130, i32 0)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %136 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %135, i32 0, i32 0
  %137 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %165

139:                                              ; preds = %129
  %140 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %141 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %140, i32 0, i32 0
  %142 = call i32 @dev_info(%struct.TYPE_11__* %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %144 = getelementptr inbounds %struct.rmi_spi_xport, %struct.rmi_spi_xport* %143, i32 0, i32 0
  %145 = call i32 @rmi_register_transport_device(%struct.TYPE_10__* %144)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %139
  %149 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %150 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %149, i32 0, i32 0
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %165

154:                                              ; preds = %139
  %155 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %156 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %155, i32 0, i32 0
  %157 = load i32, i32* @rmi_spi_unregister_transport, align 4
  %158 = load %struct.rmi_spi_xport*, %struct.rmi_spi_xport** %4, align 8
  %159 = call i32 @devm_add_action_or_reset(%struct.TYPE_11__* %156, i32 %157, %struct.rmi_spi_xport* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %154
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %2, align 4
  br label %165

164:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %162, %148, %134, %127, %91, %48, %30, %20
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.rmi_spi_xport* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rmi_spi_of_probe(%struct.spi_device*, %struct.rmi_device_platform_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.rmi_spi_xport*) #1

declare dso_local i32 @rmi_spi_manage_pools(%struct.rmi_spi_xport*, i32) #1

declare dso_local i32 @rmi_set_page(%struct.rmi_spi_xport*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @rmi_register_transport_device(%struct.TYPE_10__*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_11__*, i32, %struct.rmi_spi_xport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
