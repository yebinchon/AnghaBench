; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_ctl_page_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_e7xxx_edac.c_ctl_page_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e7xxx_pvt = type { i64, i64, i64 }

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
  %7 = alloca %struct.e7xxx_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.e7xxx_pvt*
  store %struct.e7xxx_pvt* %11, %struct.e7xxx_pvt** %7, align 8
  %12 = call i32 @edac_dbg(i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %7, align 8
  %15 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp uge i64 %19, 1048576
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %7, align 8
  %24 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %2
  %28 = load i64, i64* %5, align 8
  store i64 %28, i64* %3, align 8
  br label %54

29:                                               ; preds = %21, %18
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %7, align 8
  %32 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  %35 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %7, align 8
  %36 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %34, %37
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %7, align 8
  %41 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %3, align 8
  br label %54

46:                                               ; preds = %29
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @e7xxx_printk(i32 %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %7, align 8
  %51 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %52, 1
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %46, %44, %27
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @e7xxx_printk(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
