; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-hub.c_hub_master_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-hub.c_hub_master_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_hub = type { %struct.fsi_device* }
%struct.fsi_device = type { i32 }

@FSI_MRESP_RST_ALL_MASTER = common dso_local global i32 0, align 4
@FSI_MRESP_RST_ALL_LINK = common dso_local global i32 0, align 4
@FSI_MRESP_RST_MCR = common dso_local global i32 0, align 4
@FSI_MRESP_RST_PYE = common dso_local global i32 0, align 4
@FSI_MRESP0 = common dso_local global i32 0, align 4
@FSI_MECTRL_EOAE = common dso_local global i32 0, align 4
@FSI_MECTRL_P8_AUTO_TERM = common dso_local global i32 0, align 4
@FSI_MECTRL = common dso_local global i32 0, align 4
@FSI_MMODE_EIP = common dso_local global i32 0, align 4
@FSI_MMODE_ECRC = common dso_local global i32 0, align 4
@FSI_MMODE_EPC = common dso_local global i32 0, align 4
@FSI_MMODE_P8_TO_LSB = common dso_local global i32 0, align 4
@FSI_MMODE = common dso_local global i32 0, align 4
@FSI_MDLYR = common dso_local global i32 0, align 4
@FSI_MSENP0 = common dso_local global i32 0, align 4
@FSI_LINK_ENABLE_SETUP_TIME = common dso_local global i32 0, align 4
@FSI_MCENP0 = common dso_local global i32 0, align 4
@FSI_MAEB = common dso_local global i32 0, align 4
@FSI_MLEVP0 = common dso_local global i32 0, align 4
@FSI_MRESB_RST_GEN = common dso_local global i32 0, align 4
@FSI_MRESB0 = common dso_local global i32 0, align 4
@FSI_MRESB_RST_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_hub*)* @hub_master_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_master_init(%struct.fsi_master_hub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master_hub*, align 8
  %4 = alloca %struct.fsi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsi_master_hub* %0, %struct.fsi_master_hub** %3, align 8
  %7 = load %struct.fsi_master_hub*, %struct.fsi_master_hub** %3, align 8
  %8 = getelementptr inbounds %struct.fsi_master_hub, %struct.fsi_master_hub* %7, i32 0, i32 0
  %9 = load %struct.fsi_device*, %struct.fsi_device** %8, align 8
  store %struct.fsi_device* %9, %struct.fsi_device** %4, align 8
  %10 = load i32, i32* @FSI_MRESP_RST_ALL_MASTER, align 4
  %11 = load i32, i32* @FSI_MRESP_RST_ALL_LINK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FSI_MRESP_RST_MCR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @FSI_MRESP_RST_PYE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @cpu_to_be32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %19 = load i32, i32* @FSI_MRESP0, align 4
  %20 = call i32 @fsi_device_write(%struct.fsi_device* %18, i32 %19, i32* %5, i32 4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %145

25:                                               ; preds = %1
  %26 = load i32, i32* @FSI_MRESP_RST_ALL_MASTER, align 4
  %27 = load i32, i32* @FSI_MRESP_RST_ALL_LINK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FSI_MRESP_RST_MCR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FSI_MRESP_RST_PYE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @cpu_to_be32(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %35 = load i32, i32* @FSI_MRESP0, align 4
  %36 = call i32 @fsi_device_write(%struct.fsi_device* %34, i32 %35, i32* %5, i32 4)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %145

41:                                               ; preds = %25
  %42 = load i32, i32* @FSI_MECTRL_EOAE, align 4
  %43 = load i32, i32* @FSI_MECTRL_P8_AUTO_TERM, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @cpu_to_be32(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %47 = load i32, i32* @FSI_MECTRL, align 4
  %48 = call i32 @fsi_device_write(%struct.fsi_device* %46, i32 %47, i32* %5, i32 4)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %145

53:                                               ; preds = %41
  %54 = load i32, i32* @FSI_MMODE_EIP, align 4
  %55 = load i32, i32* @FSI_MMODE_ECRC, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FSI_MMODE_EPC, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @fsi_mmode_crs0(i32 1)
  %60 = or i32 %58, %59
  %61 = call i32 @fsi_mmode_crs1(i32 1)
  %62 = or i32 %60, %61
  %63 = load i32, i32* @FSI_MMODE_P8_TO_LSB, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @cpu_to_be32(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %67 = load i32, i32* @FSI_MMODE, align 4
  %68 = call i32 @fsi_device_write(%struct.fsi_device* %66, i32 %67, i32* %5, i32 4)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %145

73:                                               ; preds = %53
  %74 = call i32 @cpu_to_be32(i32 -65536)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %76 = load i32, i32* @FSI_MDLYR, align 4
  %77 = call i32 @fsi_device_write(%struct.fsi_device* %75, i32 %76, i32* %5, i32 4)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %145

82:                                               ; preds = %73
  %83 = call i32 @cpu_to_be32(i32 -1)
  store i32 %83, i32* %5, align 4
  %84 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %85 = load i32, i32* @FSI_MSENP0, align 4
  %86 = call i32 @fsi_device_write(%struct.fsi_device* %84, i32 %85, i32* %5, i32 4)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %145

91:                                               ; preds = %82
  %92 = load i32, i32* @FSI_LINK_ENABLE_SETUP_TIME, align 4
  %93 = call i32 @mdelay(i32 %92)
  %94 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %95 = load i32, i32* @FSI_MCENP0, align 4
  %96 = call i32 @fsi_device_write(%struct.fsi_device* %94, i32 %95, i32* %5, i32 4)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %145

101:                                              ; preds = %91
  %102 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %103 = load i32, i32* @FSI_MAEB, align 4
  %104 = call i32 @fsi_device_read(%struct.fsi_device* %102, i32 %103, i32* %5, i32 4)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %145

109:                                              ; preds = %101
  %110 = load i32, i32* @FSI_MRESP_RST_ALL_MASTER, align 4
  %111 = load i32, i32* @FSI_MRESP_RST_ALL_LINK, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @cpu_to_be32(i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %115 = load i32, i32* @FSI_MRESP0, align 4
  %116 = call i32 @fsi_device_write(%struct.fsi_device* %114, i32 %115, i32* %5, i32 4)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %145

121:                                              ; preds = %109
  %122 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %123 = load i32, i32* @FSI_MLEVP0, align 4
  %124 = call i32 @fsi_device_read(%struct.fsi_device* %122, i32 %123, i32* %5, i32 4)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %145

129:                                              ; preds = %121
  %130 = load i32, i32* @FSI_MRESB_RST_GEN, align 4
  %131 = call i32 @cpu_to_be32(i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %133 = load i32, i32* @FSI_MRESB0, align 4
  %134 = call i32 @fsi_device_write(%struct.fsi_device* %132, i32 %133, i32* %5, i32 4)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %2, align 4
  br label %145

139:                                              ; preds = %129
  %140 = load i32, i32* @FSI_MRESB_RST_ERR, align 4
  %141 = call i32 @cpu_to_be32(i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load %struct.fsi_device*, %struct.fsi_device** %4, align 8
  %143 = load i32, i32* @FSI_MRESB0, align 4
  %144 = call i32 @fsi_device_write(%struct.fsi_device* %142, i32 %143, i32* %5, i32 4)
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %139, %137, %127, %119, %107, %99, %89, %80, %71, %51, %39, %23
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fsi_device_write(%struct.fsi_device*, i32, i32*, i32) #1

declare dso_local i32 @fsi_mmode_crs0(i32) #1

declare dso_local i32 @fsi_mmode_crs1(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @fsi_device_read(%struct.fsi_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
