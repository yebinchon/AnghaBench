; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_node_dump_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_gdp_node_dump_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sti_gdp_node = type { %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node*, %struct.sti_gdp_node* }

@.str = private unnamed_addr constant [8 x i8] c"\09@:0x%p\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A\09CTL  0x%08X\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A\09AGC  0x%08X\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A\09VPO  0x%08X\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0A\09VPS  0x%08X\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0A\09PML  0x%08X\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\0A\09PMP  0x%08X\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\0A\09SIZE 0x%08X\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0A\09NVN  0x%08X\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\0A\09KEY1 0x%08X\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"\0A\09KEY2 0x%08X\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\0A\09PPT  0x%08X\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"\0A\09CML  0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.sti_gdp_node*)* @gdp_node_dump_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdp_node_dump_node(%struct.seq_file* %0, %struct.sti_gdp_node* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.sti_gdp_node*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.sti_gdp_node* %1, %struct.sti_gdp_node** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %7 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.sti_gdp_node* %6)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %10 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %9, i32 0, i32 11
  %11 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %10, align 8
  %12 = call i32 @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sti_gdp_node* %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %15 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %14, i32 0, i32 11
  %16 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %15, align 8
  %17 = call i32 @gdp_dbg_ctl(%struct.seq_file* %13, %struct.sti_gdp_node* %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %20 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %19, i32 0, i32 10
  %21 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.sti_gdp_node* %21)
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %25 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %24, i32 0, i32 9
  %26 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %25, align 8
  %27 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.sti_gdp_node* %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %30 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %29, i32 0, i32 9
  %31 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %30, align 8
  %32 = call i32 @gdp_dbg_vpo(%struct.seq_file* %28, %struct.sti_gdp_node* %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %35 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %34, i32 0, i32 8
  %36 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %35, align 8
  %37 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), %struct.sti_gdp_node* %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %40 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %39, i32 0, i32 8
  %41 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %40, align 8
  %42 = call i32 @gdp_dbg_vps(%struct.seq_file* %38, %struct.sti_gdp_node* %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %45 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %44, i32 0, i32 7
  %46 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %45, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), %struct.sti_gdp_node* %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %50 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %49, i32 0, i32 6
  %51 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %50, align 8
  %52 = call i32 @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.sti_gdp_node* %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %55 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %54, i32 0, i32 5
  %56 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %55, align 8
  %57 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.sti_gdp_node* %56)
  %58 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %59 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %60 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %59, i32 0, i32 5
  %61 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %60, align 8
  %62 = call i32 @gdp_dbg_size(%struct.seq_file* %58, %struct.sti_gdp_node* %61)
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %65 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %64, i32 0, i32 4
  %66 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %65, align 8
  %67 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), %struct.sti_gdp_node* %66)
  %68 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %69 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %70 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %69, i32 0, i32 3
  %71 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %70, align 8
  %72 = call i32 @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), %struct.sti_gdp_node* %71)
  %73 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %74 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %75 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %74, i32 0, i32 2
  %76 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %75, align 8
  %77 = call i32 @seq_printf(%struct.seq_file* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), %struct.sti_gdp_node* %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %80 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %79, i32 0, i32 1
  %81 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %80, align 8
  %82 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), %struct.sti_gdp_node* %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %85 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %84, i32 0, i32 1
  %86 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %85, align 8
  %87 = call i32 @gdp_dbg_ppt(%struct.seq_file* %83, %struct.sti_gdp_node* %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %4, align 8
  %90 = getelementptr inbounds %struct.sti_gdp_node, %struct.sti_gdp_node* %89, i32 0, i32 0
  %91 = load %struct.sti_gdp_node*, %struct.sti_gdp_node** %90, align 8
  %92 = call i32 @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), %struct.sti_gdp_node* %91)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, %struct.sti_gdp_node*) #1

declare dso_local i32 @gdp_dbg_ctl(%struct.seq_file*, %struct.sti_gdp_node*) #1

declare dso_local i32 @gdp_dbg_vpo(%struct.seq_file*, %struct.sti_gdp_node*) #1

declare dso_local i32 @gdp_dbg_vps(%struct.seq_file*, %struct.sti_gdp_node*) #1

declare dso_local i32 @gdp_dbg_size(%struct.seq_file*, %struct.sti_gdp_node*) #1

declare dso_local i32 @gdp_dbg_ppt(%struct.seq_file*, %struct.sti_gdp_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
