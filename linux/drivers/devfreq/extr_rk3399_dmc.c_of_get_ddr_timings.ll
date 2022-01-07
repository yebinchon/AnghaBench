; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_of_get_ddr_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_of_get_ddr_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dram_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"rockchip,ddr3_speed_bin\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rockchip,pd_idle\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rockchip,sr_idle\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"rockchip,sr_mc_gate_idle\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"rockchip,srpd_lite_idle\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"rockchip,standby_idle\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"rockchip,auto_pd_dis_freq\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"rockchip,dram_dll_dis_freq\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"rockchip,phy_dll_dis_freq\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"rockchip,ddr3_odt_dis_freq\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"rockchip,ddr3_drv\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"rockchip,ddr3_odt\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"rockchip,phy_ddr3_ca_drv\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"rockchip,phy_ddr3_dq_drv\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"rockchip,phy_ddr3_odt\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"rockchip,lpddr3_odt_dis_freq\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"rockchip,lpddr3_drv\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"rockchip,lpddr3_odt\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"rockchip,phy_lpddr3_ca_drv\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"rockchip,phy_lpddr3_dq_drv\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"rockchip,phy_lpddr3_odt\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"rockchip,lpddr4_odt_dis_freq\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"rockchip,lpddr4_drv\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"rockchip,lpddr4_dq_odt\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"rockchip,lpddr4_ca_odt\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"rockchip,phy_lpddr4_ca_drv\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"rockchip,phy_lpddr4_ck_cs_drv\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"rockchip,phy_lpddr4_dq_drv\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"rockchip,phy_lpddr4_odt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dram_timing*, %struct.device_node*)* @of_get_ddr_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_get_ddr_timings(%struct.dram_timing* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.dram_timing*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.dram_timing* %0, %struct.dram_timing** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.device_node*, %struct.device_node** %4, align 8
  %7 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %8 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %7, i32 0, i32 28
  %9 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.device_node*, %struct.device_node** %4, align 8
  %11 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %12 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %11, i32 0, i32 27
  %13 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %18 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %17, i32 0, i32 26
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %24 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %23, i32 0, i32 25
  %25 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %30 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %29, i32 0, i32 24
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.device_node*, %struct.device_node** %4, align 8
  %35 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %36 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %35, i32 0, i32 23
  %37 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %42 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %41, i32 0, i32 22
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.device_node*, %struct.device_node** %4, align 8
  %47 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %48 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %47, i32 0, i32 21
  %49 = call i32 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %54 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %53, i32 0, i32 20
  %55 = call i32 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %60 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %59, i32 0, i32 19
  %61 = call i32 @of_property_read_u32(%struct.device_node* %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.device_node*, %struct.device_node** %4, align 8
  %65 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %66 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %65, i32 0, i32 18
  %67 = call i32 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.device_node*, %struct.device_node** %4, align 8
  %71 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %72 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %71, i32 0, i32 17
  %73 = call i32 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32* %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.device_node*, %struct.device_node** %4, align 8
  %77 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %78 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %77, i32 0, i32 16
  %79 = call i32 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.device_node*, %struct.device_node** %4, align 8
  %83 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %84 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %83, i32 0, i32 15
  %85 = call i32 @of_property_read_u32(%struct.device_node* %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i32* %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.device_node*, %struct.device_node** %4, align 8
  %89 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %90 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %89, i32 0, i32 14
  %91 = call i32 @of_property_read_u32(%struct.device_node* %88, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32* %90)
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.device_node*, %struct.device_node** %4, align 8
  %95 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %96 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %95, i32 0, i32 13
  %97 = call i32 @of_property_read_u32(%struct.device_node* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %102 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %101, i32 0, i32 12
  %103 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32* %102)
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %108 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %107, i32 0, i32 11
  %109 = call i32 @of_property_read_u32(%struct.device_node* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32* %108)
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load %struct.device_node*, %struct.device_node** %4, align 8
  %113 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %114 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %113, i32 0, i32 10
  %115 = call i32 @of_property_read_u32(%struct.device_node* %112, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32* %114)
  %116 = load i32, i32* %5, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %5, align 4
  %118 = load %struct.device_node*, %struct.device_node** %4, align 8
  %119 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %120 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %119, i32 0, i32 9
  %121 = call i32 @of_property_read_u32(%struct.device_node* %118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32* %120)
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.device_node*, %struct.device_node** %4, align 8
  %125 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %126 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %125, i32 0, i32 8
  %127 = call i32 @of_property_read_u32(%struct.device_node* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32* %126)
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load %struct.device_node*, %struct.device_node** %4, align 8
  %131 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %132 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %131, i32 0, i32 7
  %133 = call i32 @of_property_read_u32(%struct.device_node* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32* %132)
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load %struct.device_node*, %struct.device_node** %4, align 8
  %137 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %138 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %137, i32 0, i32 6
  %139 = call i32 @of_property_read_u32(%struct.device_node* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32* %138)
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load %struct.device_node*, %struct.device_node** %4, align 8
  %143 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %144 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %143, i32 0, i32 5
  %145 = call i32 @of_property_read_u32(%struct.device_node* %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32* %144)
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load %struct.device_node*, %struct.device_node** %4, align 8
  %149 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %150 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %149, i32 0, i32 4
  %151 = call i32 @of_property_read_u32(%struct.device_node* %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32* %150)
  %152 = load i32, i32* %5, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %5, align 4
  %154 = load %struct.device_node*, %struct.device_node** %4, align 8
  %155 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %156 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %155, i32 0, i32 3
  %157 = call i32 @of_property_read_u32(%struct.device_node* %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32* %156)
  %158 = load i32, i32* %5, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %5, align 4
  %160 = load %struct.device_node*, %struct.device_node** %4, align 8
  %161 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %162 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %161, i32 0, i32 2
  %163 = call i32 @of_property_read_u32(%struct.device_node* %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i32* %162)
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  %166 = load %struct.device_node*, %struct.device_node** %4, align 8
  %167 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %168 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %167, i32 0, i32 1
  %169 = call i32 @of_property_read_u32(%struct.device_node* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i32* %168)
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  %172 = load %struct.device_node*, %struct.device_node** %4, align 8
  %173 = load %struct.dram_timing*, %struct.dram_timing** %3, align 8
  %174 = getelementptr inbounds %struct.dram_timing, %struct.dram_timing* %173, i32 0, i32 0
  %175 = call i32 @of_property_read_u32(%struct.device_node* %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i32* %174)
  %176 = load i32, i32* %5, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  ret i32 %178
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
