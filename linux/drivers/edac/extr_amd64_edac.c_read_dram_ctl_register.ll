; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_read_dram_ctl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_read_dram_ctl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32, i8*, i8*, i32 }

@DCT_SEL_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"F2x110 (DCTSelLow): 0x%08x, High range addrs at: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"  DCTs operate in %s mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ganged\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"unganged\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"  Address range split per DCT: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"  data interleave for ECC: %s, DRAM cleared since last warm reset: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"  channel interleave: %s, interleave bits selector: 0x%x\0A\00", align 1
@DCT_SEL_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*)* @read_dram_ctl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dram_ctl_register(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_pvt*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %2, align 8
  %3 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %4 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 15
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %68

8:                                                ; preds = %1
  %9 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %10 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DCT_SEL_LO, align 4
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 1
  %15 = call i32 @amd64_read_pci_cfg(i32 %11, i32 %12, i8** %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %60, label %17

17:                                               ; preds = %8
  %18 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %19 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %22 = call i8* @dct_sel_baseaddr(%struct.amd64_pvt* %21)
  %23 = call i32 (i32, i8*, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %22)
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %25 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %29 = call i32 (i32, i8*, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %31 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %17
  %34 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %35 = call i64 @dct_high_range_enabled(%struct.amd64_pvt* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %39 = call i32 (i32, i8*, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %33, %17
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %42 = call i64 @dct_data_intlv_enabled(%struct.amd64_pvt* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %46 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %47 = call i64 @dct_memory_cleared(%struct.amd64_pvt* %46)
  %48 = icmp ne i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %51 = call i32 (i32, i8*, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* %45, i8* %50)
  %52 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %53 = call i64 @dct_interleave_enabled(%struct.amd64_pvt* %52)
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %58 = call i8* @dct_sel_interleave_addr(%struct.amd64_pvt* %57)
  %59 = call i32 (i32, i8*, i8*, ...) @edac_dbg(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* %56, i8* %58)
  br label %60

60:                                               ; preds = %40, %8
  %61 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %62 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DCT_SEL_HI, align 4
  %65 = load %struct.amd64_pvt*, %struct.amd64_pvt** %2, align 8
  %66 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %65, i32 0, i32 2
  %67 = call i32 @amd64_read_pci_cfg(i32 %63, i32 %64, i8** %66)
  br label %68

68:                                               ; preds = %60, %7
  ret void
}

declare dso_local i32 @amd64_read_pci_cfg(i32, i32, i8**) #1

declare dso_local i32 @edac_dbg(i32, i8*, i8*, ...) #1

declare dso_local i8* @dct_sel_baseaddr(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_high_range_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_data_intlv_enabled(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_memory_cleared(%struct.amd64_pvt*) #1

declare dso_local i64 @dct_interleave_enabled(%struct.amd64_pvt*) #1

declare dso_local i8* @dct_sel_interleave_addr(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
