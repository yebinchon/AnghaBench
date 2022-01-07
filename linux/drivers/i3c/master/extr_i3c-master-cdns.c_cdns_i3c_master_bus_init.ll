; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_bus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_bus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.cdns_i3c_master = type { i64, i32, i32 }
%struct.i3c_bus = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.i3c_device_info = type { i32, i32 }

@CTRL_PURE_BUS_MODE = common dso_local global i32 0, align 4
@CTRL_MIXED_FAST_BUS_MODE = common dso_local global i32 0, align 4
@CTRL_MIXED_SLOW_BUS_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRESCL_CTRL0_MAX = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@I3C_BUS_TLOW_OD_MIN_NS = common dso_local global i64 0, align 8
@PRESCL_CTRL0 = common dso_local global i64 0, align 8
@PRESCL_CTRL1 = common dso_local global i64 0, align 8
@DEV_ID_RR0_IS_I3C = common dso_local global i32 0, align 4
@I3C_BCR_HDR_CAP = common dso_local global i32 0, align 4
@I3C_HDR_DDR = common dso_local global i32 0, align 4
@CTRL_HJ_ACK = common dso_local global i32 0, align 4
@CTRL_HJ_DISEC = common dso_local global i32 0, align 4
@CTRL_HALT_EN = common dso_local global i32 0, align 4
@CTRL_MCS_EN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*)* @cdns_i3c_master_bus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns_i3c_master_bus_init(%struct.i3c_master_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca %struct.cdns_i3c_master*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i3c_bus*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.i3c_device_info, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %3, align 8
  %17 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %18 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %17)
  store %struct.cdns_i3c_master* %18, %struct.cdns_i3c_master** %4, align 8
  %19 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %20 = call %struct.i3c_bus* @i3c_master_get_bus(%struct.i3c_master_controller* %19)
  store %struct.i3c_bus* %20, %struct.i3c_bus** %8, align 8
  %21 = bitcast %struct.i3c_device_info* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 8, i1 false)
  %22 = load %struct.i3c_bus*, %struct.i3c_bus** %8, align 8
  %23 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %31 [
    i32 128, label %25
    i32 130, label %27
    i32 129, label %29
  ]

25:                                               ; preds = %1
  %26 = load i32, i32* @CTRL_PURE_BUS_MODE, align 4
  store i32 %26, i32* %9, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @CTRL_MIXED_FAST_BUS_MODE, align 4
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @CTRL_MIXED_SLOW_BUS_MODE, align 4
  store i32 %30, i32* %9, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %200

34:                                               ; preds = %29, %27, %25
  %35 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %36 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @clk_get_rate(i32 %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %200

44:                                               ; preds = %34
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.i3c_bus*, %struct.i3c_bus** %8, align 8
  %47 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @DIV_ROUND_UP(i64 %45, i64 %51)
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @PRESCL_CTRL0_MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %44
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %200

60:                                               ; preds = %44
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %61, %65
  %67 = trunc i64 %66 to i32
  %68 = load %struct.i3c_bus*, %struct.i3c_bus** %8, align 8
  %69 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @PRESCL_CTRL0_I3C(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i64, i64* @I3C_BUS_TLOW_OD_MIN_NS, align 8
  %74 = load i64, i64* %6, align 8
  %75 = mul i64 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %75, %78
  %80 = sub i64 %79, 2
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @PRESCL_CTRL1_OD_LOW(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.i3c_bus*, %struct.i3c_bus** %8, align 8
  %85 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = mul i64 %89, 5
  %91 = udiv i64 %88, %90
  %92 = sub i64 %91, 1
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @PRESCL_CTRL0_MAX, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %60
  %98 = load i32, i32* @ERANGE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %200

100:                                              ; preds = %60
  %101 = load i64, i64* %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  %104 = mul nsw i32 %103, 5
  %105 = sext i32 %104 to i64
  %106 = udiv i64 %101, %105
  %107 = load %struct.i3c_bus*, %struct.i3c_bus** %8, align 8
  %108 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i64 %106, i64* %109, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @PRESCL_CTRL0_I2C(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %116 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @PRESCL_CTRL0, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load %struct.i3c_bus*, %struct.i3c_bus** %8, align 8
  %122 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 4
  %126 = sdiv i32 1000000000, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* @I3C_BUS_TLOW_OD_MIN_NS, align 8
  %129 = load i64, i64* %5, align 8
  %130 = call i32 @DIV_ROUND_UP(i64 %128, i64 %129)
  %131 = sub nsw i32 %130, 2
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %100
  store i32 0, i32* %16, align 4
  br label %135

135:                                              ; preds = %134, %100
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @PRESCL_CTRL1_OD_LOW(i32 %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %140 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PRESCL_CTRL1, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writel(i32 %138, i64 %143)
  %145 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %146 = call i32 @i3c_master_get_free_addr(%struct.i3c_master_controller* %145, i32 0)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %135
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %2, align 4
  br label %200

151:                                              ; preds = %135
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @prepare_rr0_dev_address(i32 %152)
  %154 = load i32, i32* @DEV_ID_RR0_IS_I3C, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %157 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @DEV_ID_RR0(i32 0)
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  %162 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %163 = call i32 @cdns_i3c_master_dev_rr_to_info(%struct.cdns_i3c_master* %162, i32 0, %struct.i3c_device_info* %14)
  %164 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %14, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @I3C_BCR_HDR_CAP, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %151
  %170 = load i32, i32* @I3C_HDR_DDR, align 4
  %171 = call i32 @I3C_CCC_HDR_MODE(i32 %170)
  %172 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %14, i32 0, i32 1
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %151
  %174 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %175 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %174, i32 0, i32 1
  %176 = call i32 @i3c_master_set_info(i32* %175, %struct.i3c_device_info* %14)
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %15, align 4
  store i32 %180, i32* %2, align 4
  br label %200

181:                                              ; preds = %173
  %182 = load i32, i32* @CTRL_HJ_ACK, align 4
  %183 = load i32, i32* @CTRL_HJ_DISEC, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @CTRL_HALT_EN, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @CTRL_MCS_EN, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %9, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %193 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @CTRL, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i32 @writel(i32 %191, i64 %196)
  %198 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %199 = call i32 @cdns_i3c_master_enable(%struct.cdns_i3c_master* %198)
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %181, %179, %149, %97, %57, %41, %31
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local %struct.i3c_bus* @i3c_master_get_bus(%struct.i3c_master_controller*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @PRESCL_CTRL0_I3C(i32) #1

declare dso_local i32 @PRESCL_CTRL1_OD_LOW(i32) #1

declare dso_local i32 @PRESCL_CTRL0_I2C(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @i3c_master_get_free_addr(%struct.i3c_master_controller*, i32) #1

declare dso_local i32 @prepare_rr0_dev_address(i32) #1

declare dso_local i64 @DEV_ID_RR0(i32) #1

declare dso_local i32 @cdns_i3c_master_dev_rr_to_info(%struct.cdns_i3c_master*, i32, %struct.i3c_device_info*) #1

declare dso_local i32 @I3C_CCC_HDR_MODE(i32) #1

declare dso_local i32 @i3c_master_set_info(i32*, %struct.i3c_device_info*) #1

declare dso_local i32 @cdns_i3c_master_enable(%struct.cdns_i3c_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
