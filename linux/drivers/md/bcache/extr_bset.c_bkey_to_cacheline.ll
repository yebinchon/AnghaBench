; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bkey_to_cacheline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bkey_to_cacheline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bset_tree = type { i64 }
%struct.bkey = type { i32 }

@BSET_CACHELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bset_tree*, %struct.bkey*)* @bkey_to_cacheline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkey_to_cacheline(%struct.bset_tree* %0, %struct.bkey* %1) #0 {
  %3 = alloca %struct.bset_tree*, align 8
  %4 = alloca %struct.bkey*, align 8
  store %struct.bset_tree* %0, %struct.bset_tree** %3, align 8
  store %struct.bkey* %1, %struct.bkey** %4, align 8
  %5 = load %struct.bkey*, %struct.bkey** %4, align 8
  %6 = bitcast %struct.bkey* %5 to i8*
  %7 = load %struct.bset_tree*, %struct.bset_tree** %3, align 8
  %8 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = ptrtoint i8* %6 to i64
  %12 = ptrtoint i8* %10 to i64
  %13 = sub i64 %11, %12
  %14 = load i32, i32* @BSET_CACHELINE, align 4
  %15 = sext i32 %14 to i64
  %16 = sdiv i64 %13, %15
  %17 = trunc i64 %16 to i32
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
