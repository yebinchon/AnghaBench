; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_sa.h_get_dynamic_sa_inner_digest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_sa.h_get_dynamic_sa_inner_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynamic_sa_ctl = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dynamic_sa_ctl*)* @get_dynamic_sa_inner_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dynamic_sa_inner_digest(%struct.dynamic_sa_ctl* %0) #0 {
  %2 = alloca %struct.dynamic_sa_ctl*, align 8
  store %struct.dynamic_sa_ctl* %0, %struct.dynamic_sa_ctl** %2, align 8
  %3 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %4 = ptrtoint %struct.dynamic_sa_ctl* %3 to i64
  %5 = add i64 %4, 4
  %6 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %2, align 8
  %7 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %5, %12
  %14 = inttoptr i64 %13 to i32*
  ret i32* %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
