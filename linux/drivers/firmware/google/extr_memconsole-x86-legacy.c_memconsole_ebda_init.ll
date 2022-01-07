; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/google/extr_memconsole-x86-legacy.c_memconsole_ebda_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/google/extr_memconsole-x86-legacy.c_memconsole_ebda_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.biosmemcon_ebda = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"memconsole: BIOS EBDA non-existent.\0A\00", align 1
@BIOS_MEMCONSOLE_V1_MAGIC = common dso_local global i64 0, align 8
@BIOS_MEMCONSOLE_V2_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"memconsole: BIOS console EBDA structure not found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @memconsole_ebda_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memconsole_ebda_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.biosmemcon_ebda*, align 8
  %6 = call i32 (...) @get_bios_ebda()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %52

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.biosmemcon_ebda* @phys_to_virt(i32 %12)
  %14 = bitcast %struct.biosmemcon_ebda* %13 to i64*
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = shl i64 %16, 10
  store i64 %17, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %18

18:                                               ; preds = %47, %11
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call %struct.biosmemcon_ebda* @phys_to_virt(i32 %27)
  store %struct.biosmemcon_ebda* %28, %struct.biosmemcon_ebda** %5, align 8
  %29 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %5, align 8
  %30 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BIOS_MEMCONSOLE_V1_MAGIC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %5, align 8
  %36 = call i32 @found_v1_header(%struct.biosmemcon_ebda* %35)
  store i32 1, i32* %1, align 4
  br label %52

37:                                               ; preds = %22
  %38 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %5, align 8
  %39 = getelementptr inbounds %struct.biosmemcon_ebda, %struct.biosmemcon_ebda* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BIOS_MEMCONSOLE_V2_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.biosmemcon_ebda*, %struct.biosmemcon_ebda** %5, align 8
  %45 = call i32 @found_v2_header(%struct.biosmemcon_ebda* %44)
  store i32 1, i32* %1, align 4
  br label %52

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %18

50:                                               ; preds = %18
  %51 = call i32 @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %50, %43, %34, %9
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @get_bios_ebda(...) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local %struct.biosmemcon_ebda* @phys_to_virt(i32) #1

declare dso_local i32 @found_v1_header(%struct.biosmemcon_ebda*) #1

declare dso_local i32 @found_v2_header(%struct.biosmemcon_ebda*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
