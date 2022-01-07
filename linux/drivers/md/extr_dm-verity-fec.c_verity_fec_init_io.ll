; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-fec.c_verity_fec_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity_io = type { i32 }
%struct.dm_verity_fec_io = type { i64, i32*, i64, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verity_fec_init_io(%struct.dm_verity_io* %0) #0 {
  %2 = alloca %struct.dm_verity_io*, align 8
  %3 = alloca %struct.dm_verity_fec_io*, align 8
  store %struct.dm_verity_io* %0, %struct.dm_verity_io** %2, align 8
  %4 = load %struct.dm_verity_io*, %struct.dm_verity_io** %2, align 8
  %5 = call %struct.dm_verity_fec_io* @fec_io(%struct.dm_verity_io* %4)
  store %struct.dm_verity_fec_io* %5, %struct.dm_verity_fec_io** %3, align 8
  %6 = load %struct.dm_verity_io*, %struct.dm_verity_io** %2, align 8
  %7 = getelementptr inbounds %struct.dm_verity_io, %struct.dm_verity_io* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @verity_fec_is_enabled(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %3, align 8
  %14 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %13, i32 0, i32 4
  store i32* null, i32** %14, align 8
  %15 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %3, align 8
  %16 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %3, align 8
  %20 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %3, align 8
  %22 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.dm_verity_fec_io*, %struct.dm_verity_fec_io** %3, align 8
  %24 = getelementptr inbounds %struct.dm_verity_fec_io, %struct.dm_verity_fec_io* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.dm_verity_fec_io* @fec_io(%struct.dm_verity_io*) #1

declare dso_local i32 @verity_fec_is_enabled(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
