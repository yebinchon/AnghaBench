; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_unregister_mci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i7core_edac.c_i7core_unregister_mci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i7core_dev = type { %struct.mem_ctl_info*, %struct.TYPE_2__** }
%struct.mem_ctl_info = type { i32*, i32, %struct.i7core_pvt* }
%struct.i7core_pvt = type { i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"MC: dev = %p\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't find mci handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"MC: mci = %p, dev = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%s: free mci struct\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i7core_dev*)* @i7core_unregister_mci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7core_unregister_mci(%struct.i7core_dev* %0) #0 {
  %2 = alloca %struct.i7core_dev*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i7core_pvt*, align 8
  store %struct.i7core_dev* %0, %struct.i7core_dev** %2, align 8
  %5 = load %struct.i7core_dev*, %struct.i7core_dev** %2, align 8
  %6 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %5, i32 0, i32 0
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  store %struct.mem_ctl_info* %7, %struct.mem_ctl_info** %3, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = icmp ne %struct.mem_ctl_info* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 2
  %13 = load %struct.i7core_pvt*, %struct.i7core_pvt** %12, align 8
  %14 = icmp ne %struct.i7core_pvt* %13, null
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %10, %1
  %17 = phi i1 [ true, %1 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.i7core_dev*, %struct.i7core_dev** %2, align 8
  %23 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast i32* %27 to %struct.mem_ctl_info*
  %29 = call i32 (i32, i8*, %struct.mem_ctl_info*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.mem_ctl_info* %28)
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = call i32 @i7core_printk(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %73

32:                                               ; preds = %16
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %34 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %33, i32 0, i32 2
  %35 = load %struct.i7core_pvt*, %struct.i7core_pvt** %34, align 8
  store %struct.i7core_pvt* %35, %struct.i7core_pvt** %4, align 8
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %37 = load %struct.i7core_dev*, %struct.i7core_dev** %2, align 8
  %38 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %39, i64 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 (i32, i8*, %struct.mem_ctl_info*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.mem_ctl_info* %36, i32* %42)
  %44 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %45 = getelementptr inbounds %struct.i7core_pvt, %struct.i7core_pvt* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %32
  %49 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %50 = call i32 @disable_sdram_scrub_setting(%struct.mem_ctl_info* %49)
  br label %51

51:                                               ; preds = %48, %32
  %52 = load %struct.i7core_pvt*, %struct.i7core_pvt** %4, align 8
  %53 = call i32 @i7core_pci_ctl_release(%struct.i7core_pvt* %52)
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %55 = call i32 @i7core_delete_sysfs_devices(%struct.mem_ctl_info* %54)
  %56 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %57 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @edac_mc_del_mc(i32 %58)
  %60 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %61 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to %struct.mem_ctl_info*
  %64 = call i32 (i32, i8*, %struct.mem_ctl_info*, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.mem_ctl_info* %63)
  %65 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %66 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %70 = call i32 @edac_mc_free(%struct.mem_ctl_info* %69)
  %71 = load %struct.i7core_dev*, %struct.i7core_dev** %2, align 8
  %72 = getelementptr inbounds %struct.i7core_dev, %struct.i7core_dev* %71, i32 0, i32 0
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %72, align 8
  br label %73

73:                                               ; preds = %51, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, %struct.mem_ctl_info*, ...) #1

declare dso_local i32 @i7core_printk(i32, i8*) #1

declare dso_local i32 @disable_sdram_scrub_setting(%struct.mem_ctl_info*) #1

declare dso_local i32 @i7core_pci_ctl_release(%struct.i7core_pvt*) #1

declare dso_local i32 @i7core_delete_sysfs_devices(%struct.mem_ctl_info*) #1

declare dso_local i32 @edac_mc_del_mc(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
