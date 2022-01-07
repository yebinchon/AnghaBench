; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_fixup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_fixup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd_block = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_cmd_block*)* @its_fixup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_fixup_cmd(%struct.its_cmd_block* %0) #0 {
  %2 = alloca %struct.its_cmd_block*, align 8
  store %struct.its_cmd_block* %0, %struct.its_cmd_block** %2, align 8
  %3 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %4 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %3, i32 0, i32 0
  %5 = load i8**, i8*** %4, align 8
  %6 = getelementptr inbounds i8*, i8** %5, i64 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i8* @cpu_to_le64(i8* %7)
  %9 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %10 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  store i8* %8, i8** %12, align 8
  %13 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %14 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @cpu_to_le64(i8* %17)
  %19 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %20 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  store i8* %18, i8** %22, align 8
  %23 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %24 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @cpu_to_le64(i8* %27)
  %29 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %30 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %29, i32 0, i32 0
  %31 = load i8**, i8*** %30, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  store i8* %28, i8** %32, align 8
  %33 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %34 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 3
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @cpu_to_le64(i8* %37)
  %39 = load %struct.its_cmd_block*, %struct.its_cmd_block** %2, align 8
  %40 = getelementptr inbounds %struct.its_cmd_block, %struct.its_cmd_block* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 3
  store i8* %38, i8** %42, align 8
  ret void
}

declare dso_local i8* @cpu_to_le64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
