; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_mem_err_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_mem_err_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_mem_err = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cper_mem_err_compact = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cper_mem_err_pack(%struct.cper_sec_mem_err* %0, %struct.cper_mem_err_compact* %1) #0 {
  %3 = alloca %struct.cper_sec_mem_err*, align 8
  %4 = alloca %struct.cper_mem_err_compact*, align 8
  store %struct.cper_sec_mem_err* %0, %struct.cper_sec_mem_err** %3, align 8
  store %struct.cper_mem_err_compact* %1, %struct.cper_mem_err_compact** %4, align 8
  %5 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %6 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %9 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %8, i32 0, i32 14
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %11 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %10, i32 0, i32 13
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %14 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %13, i32 0, i32 13
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %16 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %19 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %21 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %24 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %26 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %29 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %31 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %34 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %36 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %39 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %41 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %44 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %46 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %49 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %51 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %54 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %56 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %59 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %61 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %64 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %66 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %69 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %71 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %74 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.cper_sec_mem_err*, %struct.cper_sec_mem_err** %3, align 8
  %76 = getelementptr inbounds %struct.cper_sec_mem_err, %struct.cper_sec_mem_err* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cper_mem_err_compact*, %struct.cper_mem_err_compact** %4, align 8
  %79 = getelementptr inbounds %struct.cper_mem_err_compact, %struct.cper_mem_err_compact* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
