; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_sa.h_get_dynamic_sa_offset_state_ptr_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_sa.h_get_dynamic_sa_offset_state_ptr_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynamic_sa_ctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dynamic_sa_ctl*)* @get_dynamic_sa_offset_state_ptr_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dynamic_sa_offset_state_ptr_field(%struct.dynamic_sa_ctl* %0) #0 {
  %2 = alloca %struct.dynamic_sa_ctl*, align 8
  %3 = alloca i32, align 4
  store %struct.dynamic_sa_ctl* %0, %struct.dynamic_sa_ctl** %2, align 8
  %4 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %5 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %10 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %8, %13
  %15 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %16 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %14, %19
  %21 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %22 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %20, %25
  %27 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %28 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  %33 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %34 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %32, %37
  %39 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %40 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %38, %43
  %45 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %46 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %44, %49
  %51 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %52 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %50, %55
  %57 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %58 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %56, %61
  %63 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %64 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %62, %67
  %69 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %70 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %68, %73
  %75 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %76 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %74, %79
  %81 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %82 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %3, align 4
  %87 = load i32, i32* %3, align 4
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  %90 = add i64 56, %89
  %91 = trunc i64 %90 to i32
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
