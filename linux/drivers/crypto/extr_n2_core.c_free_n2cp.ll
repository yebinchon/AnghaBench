; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_free_n2cp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_free_n2cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2_crypto = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.n2_crypto* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.n2_crypto*)* @free_n2cp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_n2cp(%struct.n2_crypto* %0) #0 {
  %2 = alloca %struct.n2_crypto*, align 8
  store %struct.n2_crypto* %0, %struct.n2_crypto** %2, align 8
  %3 = load %struct.n2_crypto*, %struct.n2_crypto** %2, align 8
  %4 = getelementptr inbounds %struct.n2_crypto, %struct.n2_crypto* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load %struct.n2_crypto*, %struct.n2_crypto** %5, align 8
  %7 = call i32 @kfree(%struct.n2_crypto* %6)
  %8 = load %struct.n2_crypto*, %struct.n2_crypto** %2, align 8
  %9 = getelementptr inbounds %struct.n2_crypto, %struct.n2_crypto* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.n2_crypto* null, %struct.n2_crypto** %10, align 8
  %11 = load %struct.n2_crypto*, %struct.n2_crypto** %2, align 8
  %12 = call i32 @kfree(%struct.n2_crypto* %11)
  ret void
}

declare dso_local i32 @kfree(%struct.n2_crypto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
