; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-icy.c_icy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-icy.c_icy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_board_info = type { i8*, i32, %struct.fwnode_handle* }
%struct.fwnode_handle = type { i32 }
%struct.zorro_dev = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.zorro_device_id = type { i32 }
%struct.icy_i2c = type { %struct.TYPE_7__, i32, %struct.fwnode_handle*, i8*, i8* }
%struct.TYPE_7__ = type { i32, %struct.i2c_algo_pcf_data*, i32, %struct.TYPE_5__ }
%struct.i2c_algo_pcf_data = type { i32, i32, i32, i32, i32, %struct.icy_i2c* }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [8 x i8] c"ltc2990\00", align 1
@__const.icy_probe.ltc2990_info = private unnamed_addr constant %struct.i2c_board_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 76, %struct.fwnode_handle* null }, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"ICY I2C Zorro adapter\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@icy_pcf_setpcf = common dso_local global i32 0, align 4
@icy_pcf_getpcf = common dso_local global i32 0, align 4
@icy_pcf_getown = common dso_local global i32 0, align 4
@icy_pcf_getclock = common dso_local global i32 0, align 4
@icy_pcf_waitforpin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"i2c_pcf_add_bus() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"ICY I2C controller at %pa, IRQ not implemented\0A\00", align 1
@icy_ltc2990_props = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to create fwnode for LTC2990, error: %ld\0A\00", align 1
@icy_ltc2990_addresses = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zorro_dev*, %struct.zorro_device_id*)* @icy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icy_probe(%struct.zorro_dev* %0, %struct.zorro_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zorro_dev*, align 8
  %5 = alloca %struct.zorro_device_id*, align 8
  %6 = alloca %struct.icy_i2c*, align 8
  %7 = alloca %struct.i2c_algo_pcf_data*, align 8
  %8 = alloca %struct.fwnode_handle*, align 8
  %9 = alloca %struct.i2c_board_info, align 8
  store %struct.zorro_dev* %0, %struct.zorro_dev** %4, align 8
  store %struct.zorro_device_id* %1, %struct.zorro_device_id** %5, align 8
  %10 = bitcast %struct.i2c_board_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.i2c_board_info* @__const.icy_probe.ltc2990_info to i8*), i64 24, i1 false)
  %11 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %12 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @devm_kzalloc(i32* %12, i32 64, i32 %13)
  %15 = bitcast i8* %14 to %struct.icy_i2c*
  store %struct.icy_i2c* %15, %struct.icy_i2c** %6, align 8
  %16 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %17 = icmp ne %struct.icy_i2c* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %146

21:                                               ; preds = %2
  %22 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %23 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kzalloc(i32* %23, i32 32, i32 %24)
  %26 = bitcast i8* %25 to %struct.i2c_algo_pcf_data*
  store %struct.i2c_algo_pcf_data* %26, %struct.i2c_algo_pcf_data** %7, align 8
  %27 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %28 = icmp ne %struct.i2c_algo_pcf_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %146

32:                                               ; preds = %21
  %33 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %34 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %33, i32 0, i32 0
  %35 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %36 = call i32 @dev_set_drvdata(i32* %34, %struct.icy_i2c* %35)
  %37 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %38 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %37, i32 0, i32 0
  %39 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %40 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32* %38, i32** %42, align 8
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %45 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %48 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %49 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store %struct.i2c_algo_pcf_data* %47, %struct.i2c_algo_pcf_data** %50, align 8
  %51 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %52 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strlcpy(i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %56 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %57 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %56, i32 0, i32 0
  %58 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %59 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %63 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @devm_request_mem_region(i32* %57, i64 %61, i32 4, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %32
  %69 = load i32, i32* @ENXIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %146

71:                                               ; preds = %32
  %72 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %73 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @ZTWO_VADDR(i64 %75)
  %77 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %78 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %80 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 2
  %84 = call i8* @ZTWO_VADDR(i64 %83)
  %85 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %86 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %88 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %89 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %88, i32 0, i32 5
  store %struct.icy_i2c* %87, %struct.icy_i2c** %89, align 8
  %90 = load i32, i32* @icy_pcf_setpcf, align 4
  %91 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %92 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @icy_pcf_getpcf, align 4
  %94 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %95 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @icy_pcf_getown, align 4
  %97 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %98 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @icy_pcf_getclock, align 4
  %100 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %101 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @icy_pcf_waitforpin, align 4
  %103 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %7, align 8
  %104 = getelementptr inbounds %struct.i2c_algo_pcf_data, %struct.i2c_algo_pcf_data* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %106 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %105, i32 0, i32 0
  %107 = call i64 @i2c_pcf_add_bus(%struct.TYPE_7__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %71
  %110 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %111 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @ENXIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %146

115:                                              ; preds = %71
  %116 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %117 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %116, i32 0, i32 0
  %118 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %119 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = call i32 @dev_info(i32* %117, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64* %120)
  %122 = load i32, i32* @icy_ltc2990_props, align 4
  %123 = call %struct.fwnode_handle* @fwnode_create_software_node(i32 %122, i32* null)
  store %struct.fwnode_handle* %123, %struct.fwnode_handle** %8, align 8
  %124 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %125 = call i64 @IS_ERR(%struct.fwnode_handle* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %115
  %128 = load %struct.zorro_dev*, %struct.zorro_dev** %4, align 8
  %129 = getelementptr inbounds %struct.zorro_dev, %struct.zorro_dev* %128, i32 0, i32 0
  %130 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %131 = call i64* @PTR_ERR(%struct.fwnode_handle* %130)
  %132 = call i32 @dev_info(i32* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i64* %131)
  br label %145

133:                                              ; preds = %115
  %134 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %135 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %136 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %135, i32 0, i32 2
  store %struct.fwnode_handle* %134, %struct.fwnode_handle** %136, align 8
  %137 = load %struct.fwnode_handle*, %struct.fwnode_handle** %8, align 8
  %138 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %9, i32 0, i32 2
  store %struct.fwnode_handle* %137, %struct.fwnode_handle** %138, align 8
  %139 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %140 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %139, i32 0, i32 0
  %141 = load i32, i32* @icy_ltc2990_addresses, align 4
  %142 = call i32 @i2c_new_probed_device(%struct.TYPE_7__* %140, %struct.i2c_board_info* %9, i32 %141, i32* null)
  %143 = load %struct.icy_i2c*, %struct.icy_i2c** %6, align 8
  %144 = getelementptr inbounds %struct.icy_i2c, %struct.icy_i2c* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %133, %127
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %109, %68, %29, %18
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @dev_set_drvdata(i32*, %struct.icy_i2c*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @devm_request_mem_region(i32*, i64, i32, i32) #2

declare dso_local i8* @ZTWO_VADDR(i64) #2

declare dso_local i64 @i2c_pcf_add_bus(%struct.TYPE_7__*) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32 @dev_info(i32*, i8*, i64*) #2

declare dso_local %struct.fwnode_handle* @fwnode_create_software_node(i32, i32*) #2

declare dso_local i64 @IS_ERR(%struct.fwnode_handle*) #2

declare dso_local i64* @PTR_ERR(%struct.fwnode_handle*) #2

declare dso_local i32 @i2c_new_probed_device(%struct.TYPE_7__*, %struct.i2c_board_info*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
