; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_ctl_page_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e752x_edac.c_ctl_page_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e752x_pvt = type { i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Invalid page %lx - out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i64)* @ctl_page_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ctl_page_to_phys(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.e752x_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.e752x_pvt*
  store %struct.e752x_pvt* %11, %struct.e752x_pvt** %7, align 8
  %12 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %15 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %3, align 8
  br label %56

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp uge i64 %21, 1048576
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %26 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %3, align 8
  br label %56

31:                                               ; preds = %23, %20
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %34 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  %37 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %38 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %36, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %43 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i64, i64* %6, align 8
  store i64 %47, i64* %3, align 8
  br label %56

48:                                               ; preds = %31
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @e752x_printk(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load %struct.e752x_pvt*, %struct.e752x_pvt** %7, align 8
  %53 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, 1
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %48, %46, %29, %18
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @e752x_printk(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
