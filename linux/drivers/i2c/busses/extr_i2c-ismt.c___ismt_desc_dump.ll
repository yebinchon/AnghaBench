; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c___ismt_desc_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c___ismt_desc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ismt_desc = type { %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc*, %struct.ismt_desc* }

@.str = private unnamed_addr constant [24 x i8] c"Descriptor struct:  %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"\09tgtaddr_rw=0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09wr_len_cmd=0x%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"\09rd_len=    0x%02X\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09control=   0x%02X\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09status=    0x%02X\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"\09retry=     0x%02X\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\09rxbytes=   0x%02X\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\09txbytes=   0x%02X\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"\09dptr_low=  0x%08X\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"\09dptr_high= 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ismt_desc*)* @__ismt_desc_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ismt_desc_dump(%struct.device* %0, %struct.ismt_desc* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.ismt_desc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.ismt_desc* %1, %struct.ismt_desc** %4, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %7 = call i32 @dev_dbg(%struct.device* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ismt_desc* %6)
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %10 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %9, i32 0, i32 9
  %11 = load %struct.ismt_desc*, %struct.ismt_desc** %10, align 8
  %12 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.ismt_desc* %11)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %15 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %14, i32 0, i32 8
  %16 = load %struct.ismt_desc*, %struct.ismt_desc** %15, align 8
  %17 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.ismt_desc* %16)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %20 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %19, i32 0, i32 7
  %21 = load %struct.ismt_desc*, %struct.ismt_desc** %20, align 8
  %22 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), %struct.ismt_desc* %21)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %25 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %24, i32 0, i32 6
  %26 = load %struct.ismt_desc*, %struct.ismt_desc** %25, align 8
  %27 = call i32 @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct.ismt_desc* %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %30 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %29, i32 0, i32 5
  %31 = load %struct.ismt_desc*, %struct.ismt_desc** %30, align 8
  %32 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.ismt_desc* %31)
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %35 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %34, i32 0, i32 4
  %36 = load %struct.ismt_desc*, %struct.ismt_desc** %35, align 8
  %37 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), %struct.ismt_desc* %36)
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %40 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %39, i32 0, i32 3
  %41 = load %struct.ismt_desc*, %struct.ismt_desc** %40, align 8
  %42 = call i32 @dev_dbg(%struct.device* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), %struct.ismt_desc* %41)
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %45 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %44, i32 0, i32 2
  %46 = load %struct.ismt_desc*, %struct.ismt_desc** %45, align 8
  %47 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), %struct.ismt_desc* %46)
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %50 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %49, i32 0, i32 1
  %51 = load %struct.ismt_desc*, %struct.ismt_desc** %50, align 8
  %52 = call i32 @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), %struct.ismt_desc* %51)
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load %struct.ismt_desc*, %struct.ismt_desc** %4, align 8
  %55 = getelementptr inbounds %struct.ismt_desc, %struct.ismt_desc* %54, i32 0, i32 0
  %56 = load %struct.ismt_desc*, %struct.ismt_desc** %55, align 8
  %57 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), %struct.ismt_desc* %56)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.ismt_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
