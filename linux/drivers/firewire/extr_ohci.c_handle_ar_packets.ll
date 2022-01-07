; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_ar_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_handle_ar_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ar_context*, i8*, i8*)* @handle_ar_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_ar_packets(%struct.ar_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ar_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ar_context* %0, %struct.ar_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.ar_context*, %struct.ar_context** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @handle_ar_packet(%struct.ar_context* %14, i8* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %4, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %6, align 8
  br label %9

23:                                               ; preds = %9
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i8*, i8** %4, align 8
  ret i8* %26
}

declare dso_local i8* @handle_ar_packet(%struct.ar_context*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
