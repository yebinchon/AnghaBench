; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_is_erasure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_fec_is_erasure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, i32 }
%struct.dm_verity_io = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.dm_verity_io*, i32*, i32*)* @fec_is_erasure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_is_erasure(%struct.dm_verity* %0, %struct.dm_verity_io* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_verity*, align 8
  %7 = alloca %struct.dm_verity_io*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.dm_verity* %0, %struct.dm_verity** %6, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %11 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %12 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %13 = call i32 @verity_io_hash_req(%struct.dm_verity* %11, %struct.dm_verity_io* %12)
  %14 = load i32*, i32** %9, align 8
  %15 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %16 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %20 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %21 = call i32 @verity_io_real_digest(%struct.dm_verity* %19, %struct.dm_verity_io* %20)
  %22 = call i32 @verity_hash(%struct.dm_verity* %10, i32 %13, i32* %14, i32 %18, i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %37

26:                                               ; preds = %4
  %27 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %28 = load %struct.dm_verity_io*, %struct.dm_verity_io** %7, align 8
  %29 = call i32 @verity_io_real_digest(%struct.dm_verity* %27, %struct.dm_verity_io* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.dm_verity*, %struct.dm_verity** %6, align 8
  %32 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @memcmp(i32 %29, i32* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @verity_hash(%struct.dm_verity*, i32, i32*, i32, i32) #1

declare dso_local i32 @verity_io_hash_req(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i32 @verity_io_real_digest(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
