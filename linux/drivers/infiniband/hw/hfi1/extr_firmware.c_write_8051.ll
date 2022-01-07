; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_write_8051.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_write_8051.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@DC_DC8051_CFG_RAM_ACCESS_SETUP_RAM_SEL_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RAM_ACCESS_SETUP_AUTO_INCR_ADDR_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RAM_ACCESS_SETUP = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_MASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_SHIFT = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_CTRL_WRITE_ENA_SMASK = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_CTRL = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_WR_DATA = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_STATUS = common dso_local global i32 0, align 4
@DC_DC8051_CFG_RAM_ACCESS_STATUS_ACCESS_COMPLETED_SMASK = common dso_local global i32 0, align 4
@DC8051_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"timeout writing 8051 data\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i32, i32, i32*, i32)* @write_8051 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_8051(%struct.hfi1_devdata* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %10, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = and i64 %18, 7
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @DC_DC8051_CFG_RAM_ACCESS_SETUP_RAM_SEL_SMASK, align 8
  br label %27

26:                                               ; preds = %5
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  %29 = load i64, i64* @DC_DC8051_CFG_RAM_ACCESS_SETUP_AUTO_INCR_ADDR_SMASK, align 8
  %30 = or i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %33 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_SETUP, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @write_csr(%struct.hfi1_devdata* %32, i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_CTRL_WRITE_ENA_SMASK, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %44 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_CTRL, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @write_csr(%struct.hfi1_devdata* %43, i32 %44, i32 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %106, %27
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %109

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %16, align 4
  %63 = call i32 @memcpy(i32* %12, i32* %61, i32 %62)
  br label %80

64:                                               ; preds = %51
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  br label %79

73:                                               ; preds = %64
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @memcpy(i32* %12, i32* %77, i32 8)
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %82 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_WR_DATA, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @write_csr(%struct.hfi1_devdata* %81, i32 %82, i32 %83)
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %103, %80
  %86 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %87 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_STATUS, align 4
  %88 = call i32 @read_csr(%struct.hfi1_devdata* %86, i32 %87)
  %89 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_STATUS_ACCESS_COMPLETED_SMASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %85
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @DC8051_ACCESS_TIMEOUT, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %100 = call i32 @dd_dev_err(%struct.hfi1_devdata* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @ENXIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %116

103:                                              ; preds = %92
  %104 = call i32 @udelay(i32 1)
  br label %85

105:                                              ; preds = %85
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 8
  store i32 %108, i32* %13, align 4
  br label %47

109:                                              ; preds = %47
  %110 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %111 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_CTRL, align 4
  %112 = call i32 @write_csr(%struct.hfi1_devdata* %110, i32 %111, i32 0)
  %113 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %7, align 8
  %114 = load i32, i32* @DC_DC8051_CFG_RAM_ACCESS_SETUP, align 4
  %115 = call i32 @write_csr(%struct.hfi1_devdata* %113, i32 %114, i32 0)
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %109, %98
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @read_csr(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
