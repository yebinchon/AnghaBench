; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_dmi_entry_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_dmi-sysfs.c_dmi_entry_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dmi_header*)* @dmi_entry_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dmi_entry_length(%struct.dmi_header* %0) #0 {
  %2 = alloca %struct.dmi_header*, align 8
  %3 = alloca i8*, align 8
  store %struct.dmi_header* %0, %struct.dmi_header** %2, align 8
  %4 = load %struct.dmi_header*, %struct.dmi_header** %2, align 8
  %5 = bitcast %struct.dmi_header* %4 to i8*
  store i8* %5, i8** %3, align 8
  %6 = load %struct.dmi_header*, %struct.dmi_header** %2, align 8
  %7 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8* %11, i8** %3, align 8
  br label %12

12:                                               ; preds = %26, %1
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i1 [ true, %12 ], [ %23, %18 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  br label %12

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load %struct.dmi_header*, %struct.dmi_header** %2, align 8
  %33 = bitcast %struct.dmi_header* %32 to i8*
  %34 = ptrtoint i8* %31 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
