; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_set_dynamic_sa_command_0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_set_dynamic_sa_command_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynamic_sa_ctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @set_dynamic_sa_command_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca %struct.dynamic_sa_ctl*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dynamic_sa_ctl* %0, %struct.dynamic_sa_ctl** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %26 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %30 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %35 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %40 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %45 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %18, align 4
  %49 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %50 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %55 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %60 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* %21, align 4
  %64 = and i32 %63, 3
  %65 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %66 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 7
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %21, align 4
  %70 = ashr i32 %69, 2
  %71 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %72 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 8
  store i32 %70, i32* %74, align 8
  %75 = load i32, i32* %22, align 4
  %76 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %77 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 9
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %23, align 4
  %81 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %82 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 10
  store i32 %80, i32* %84, align 8
  %85 = load i32, i32* %24, align 4
  %86 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %87 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 11
  store i32 %85, i32* %89, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
