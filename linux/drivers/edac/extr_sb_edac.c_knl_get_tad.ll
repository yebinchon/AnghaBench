; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_tad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_knl_get_tad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbridge_pvt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pci_dev*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@knl_tad_dram_limit_lo = common dso_local global i32* null, align 8
@knl_tad_dram_offset_lo = common dso_local global i32* null, align 8
@knl_tad_dram_hi = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@knl_tad_ways = common dso_local global i32* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unexpected value %d in mc_tad_limit_lo wayness field\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbridge_pvt*, i32, i32, i32*, i32*, i32*)* @knl_get_tad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knl_get_tad(%struct.sbridge_pvt* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbridge_pvt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pci_dev*, align 8
  %18 = alloca i32, align 4
  store %struct.sbridge_pvt* %0, %struct.sbridge_pvt** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %30 [
    i32 0, label %20
    i32 1, label %25
  ]

20:                                               ; preds = %6
  %21 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %22 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %17, align 8
  br label %34

25:                                               ; preds = %6
  %26 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %8, align 8
  %27 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %28, align 8
  store %struct.pci_dev* %29, %struct.pci_dev** %17, align 8
  br label %34

30:                                               ; preds = %6
  %31 = call i32 @WARN_ON(i32 1)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %101

34:                                               ; preds = %25, %20
  %35 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %36 = load i32*, i32** @knl_tad_dram_limit_lo, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pci_read_config_dword(%struct.pci_dev* %35, i32 %40, i32* %14)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %43 = load i32*, i32** @knl_tad_dram_offset_lo, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pci_read_config_dword(%struct.pci_dev* %42, i32 %47, i32* %15)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %50 = load i32*, i32** @knl_tad_dram_hi, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_read_config_dword(%struct.pci_dev* %49, i32 %54, i32* %16)
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @GET_BITFIELD(i32 %56, i32 0, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %34
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %101

62:                                               ; preds = %34
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @GET_BITFIELD(i32 %63, i32 3, i32 5)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32*, i32** @knl_tad_ways, align 8
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %62
  %70 = load i32*, i32** @knl_tad_ways, align 8
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  br label %83

76:                                               ; preds = %62
  %77 = load i32*, i32** %13, align 8
  store i32 0, i32* %77, align 4
  %78 = load i32, i32* @KERN_ERR, align 4
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @sbridge_printk(i32 %78, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %101

83:                                               ; preds = %69
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @GET_BITFIELD(i32 %84, i32 6, i32 31)
  %86 = shl i32 %85, 6
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @GET_BITFIELD(i32 %87, i32 0, i32 15)
  %89 = shl i32 %88, 32
  %90 = or i32 %86, %89
  %91 = load i32*, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @GET_BITFIELD(i32 %92, i32 6, i32 31)
  %94 = shl i32 %93, 6
  %95 = or i32 %94, 63
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @GET_BITFIELD(i32 %96, i32 16, i32 31)
  %98 = shl i32 %97, 32
  %99 = or i32 %95, %98
  %100 = load i32*, i32** %12, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %7, align 4
  br label %101

101:                                              ; preds = %83, %76, %59, %30
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @GET_BITFIELD(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sbridge_printk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
