; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_skx_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decoded_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decoded_addr*)* @skx_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skx_decode(%struct.decoded_addr* %0) #0 {
  %2 = alloca %struct.decoded_addr*, align 8
  store %struct.decoded_addr* %0, %struct.decoded_addr** %2, align 8
  %3 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %4 = call i64 @skx_sad_decode(%struct.decoded_addr* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %8 = call i64 @skx_tad_decode(%struct.decoded_addr* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %12 = call i64 @skx_rir_decode(%struct.decoded_addr* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.decoded_addr*, %struct.decoded_addr** %2, align 8
  %16 = call i64 @skx_mad_decode(%struct.decoded_addr* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %10, %6, %1
  %19 = phi i1 [ false, %10 ], [ false, %6 ], [ false, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @skx_sad_decode(%struct.decoded_addr*) #1

declare dso_local i64 @skx_tad_decode(%struct.decoded_addr*) #1

declare dso_local i64 @skx_rir_decode(%struct.decoded_addr*) #1

declare dso_local i64 @skx_mad_decode(%struct.decoded_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
