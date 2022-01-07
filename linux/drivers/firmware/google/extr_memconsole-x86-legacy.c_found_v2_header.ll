; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_memconsole-x86-legacy.c_found_v2_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_memconsole-x86-legacy.c_found_v2_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biosmemcon_ebda = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"memconsole: BIOS console v2 EBDA structure found at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"memconsole: BIOS console buffer at 0x%.8x, start = %d, end = %d, num_bytes = %d\0A\00", align 1
@memconsole_baseaddr = common dso_local global i32 0, align 4
@memconsole_length = common dso_local global i32 0, align 4
@memconsole_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.biosmemcon_ebda*)* @found_v2_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @found_v2_header(%struct.biosmemcon_ebda* %0) #0 {
  %2 = alloca %struct.biosmemcon_ebda*, align 8
  store %struct.biosmemcon_ebda* %0, %struct.biosmemcon_ebda** %2, align 8
  %3 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %4 = call i32 (i8*, %struct.biosmemcon_ebda*, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), %struct.biosmemcon_ebda* %3)
  %5 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %6 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.biosmemcon_ebda*
  %11 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %12 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %16 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %20 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, %struct.biosmemcon_ebda*, ...) @pr_info(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), %struct.biosmemcon_ebda* %10, i32 %14, i32 %18, i32 %22)
  %24 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %25 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %29 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %27, %31
  %33 = call i32 @phys_to_virt(i32 %32)
  store i32 %33, i32* @memconsole_baseaddr, align 4
  %34 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %35 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %2, align 8
  %39 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %37, %41
  store i32 %42, i32* @memconsole_length, align 4
  %43 = load i32, i32* @memconsole_read, align 4
  %44 = call i32 @memconsole_setup(i32 %43)
  ret void
}

declare dso_local i32 @pr_info(i8*, %struct.biosmemcon_ebda*, ...) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @memconsole_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
