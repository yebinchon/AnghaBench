; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_debugfs.c_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/nitrox/extr_nitrox_debugfs.c_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.nitrox_device* }
%struct.nitrox_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"NITROX [%d] Request Statistics\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"  Posted: %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"  Completed: %llu\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"  Dropped: %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nitrox_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.nitrox_device*, %struct.nitrox_device** %7, align 8
  store %struct.nitrox_device* %8, %struct.nitrox_device** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %11 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %16 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i64 @atomic64_read(i32* %17)
  %19 = trunc i64 %18 to i32
  %20 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %23 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i64 @atomic64_read(i32* %24)
  %26 = trunc i64 %25 to i32
  %27 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.nitrox_device*, %struct.nitrox_device** %5, align 8
  %30 = getelementptr inbounds %struct.nitrox_device, %struct.nitrox_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i64 @atomic64_read(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
