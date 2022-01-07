; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vsxxxaa.c_vsxxxaa_smells_like_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vsxxxaa.c_vsxxxaa_smells_like_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsxxxaa = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsxxxaa*, i8, i64)* @vsxxxaa_smells_like_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsxxxaa_smells_like_packet(%struct.vsxxxaa* %0, i8 zeroext %1, i64 %2) #0 {
  %4 = alloca %struct.vsxxxaa*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.vsxxxaa* %0, %struct.vsxxxaa** %4, align 8
  store i8 %1, i8* %5, align 1
  store i64 %2, i64* %6, align 8
  %7 = load %struct.vsxxxaa*, %struct.vsxxxaa** %4, align 8
  %8 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.vsxxxaa*, %struct.vsxxxaa** %4, align 8
  %14 = getelementptr inbounds %struct.vsxxxaa, %struct.vsxxxaa* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8, i8* %5, align 1
  %19 = call i64 @MATCH_PACKET_TYPE(i32 %17, i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %12, %3
  %22 = phi i1 [ false, %3 ], [ %20, %12 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i64 @MATCH_PACKET_TYPE(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
