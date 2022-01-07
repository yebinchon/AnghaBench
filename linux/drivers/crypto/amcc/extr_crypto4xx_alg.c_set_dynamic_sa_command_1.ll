; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_set_dynamic_sa_command_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_set_dynamic_sa_command_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynamic_sa_ctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @set_dynamic_sa_command_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.dynamic_sa_ctl*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.dynamic_sa_ctl* %0, %struct.dynamic_sa_ctl** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %21 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %22 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %12, align 4
  %25 = and i32 %24, 4
  %26 = ashr i32 %25, 2
  %27 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %28 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 3
  %33 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %34 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %39 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 8
  %42 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %43 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %48 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %53 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 5
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %58 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 6
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %63 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 7
  store i32 %61, i32* %65, align 4
  %66 = load i32, i32* %18, align 4
  %67 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %68 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 8
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* %19, align 4
  %72 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %73 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 9
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %11, align 8
  %78 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 10
  store i32 %76, i32* %80, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
