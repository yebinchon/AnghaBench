; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_write_config_in_seqfile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_write_config_in_seqfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexrm_mbox = type { i32, %struct.flexrm_ring* }
%struct.flexrm_ring = type { i64, i64, i32, i64 }
%struct.seq_file = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"%-5s %-9s %-18s %-10s %-18s %-10s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Ring#\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"BD_Addr\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"BD_Size\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Cmpl_Addr\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Cmpl_Size\00", align 1
@RING_CONTROL = common dso_local global i64 0, align 8
@CONTROL_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"%-5d %-9s 0x%016llx 0x%08x 0x%016llx 0x%08x\0A\00", align 1
@RING_BD_SIZE = common dso_local global i64 0, align 8
@RING_CMPL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexrm_mbox*, %struct.seq_file*)* @flexrm_write_config_in_seqfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexrm_write_config_in_seqfile(%struct.flexrm_mbox* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.flexrm_mbox*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.flexrm_ring*, align 8
  store %struct.flexrm_mbox* %0, %struct.flexrm_mbox** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.flexrm_mbox*, %struct.flexrm_mbox** %3, align 8
  %13 = getelementptr inbounds %struct.flexrm_mbox, %struct.flexrm_mbox* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = load %struct.flexrm_mbox*, %struct.flexrm_mbox** %3, align 8
  %18 = getelementptr inbounds %struct.flexrm_mbox, %struct.flexrm_mbox* %17, i32 0, i32 1
  %19 = load %struct.flexrm_ring*, %struct.flexrm_ring** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %19, i64 %21
  store %struct.flexrm_ring* %22, %struct.flexrm_ring** %7, align 8
  %23 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %24 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RING_CONTROL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  %29 = load i32, i32* @CONTROL_ACTIVE_SHIFT, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %35

34:                                               ; preds = %16
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %6, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %37 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %38 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %44 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RING_BD_SIZE, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.flexrm_ring*, %struct.flexrm_ring** %7, align 8
  %49 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RING_CMPL_SIZE, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (%struct.seq_file*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* %41, i8* %42, i64 %45, i32 %47, i64 %50, i32 %52)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %10

57:                                               ; preds = %10
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
