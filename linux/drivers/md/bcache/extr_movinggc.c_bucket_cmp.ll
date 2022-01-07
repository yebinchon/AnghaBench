; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_movinggc.c_bucket_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_movinggc.c_bucket_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bucket*, %struct.bucket*)* @bucket_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_cmp(%struct.bucket* %0, %struct.bucket* %1) #0 {
  %3 = alloca %struct.bucket*, align 8
  %4 = alloca %struct.bucket*, align 8
  store %struct.bucket* %0, %struct.bucket** %3, align 8
  store %struct.bucket* %1, %struct.bucket** %4, align 8
  %5 = load %struct.bucket*, %struct.bucket** %3, align 8
  %6 = call i64 @GC_SECTORS_USED(%struct.bucket* %5)
  %7 = load %struct.bucket*, %struct.bucket** %4, align 8
  %8 = call i64 @GC_SECTORS_USED(%struct.bucket* %7)
  %9 = icmp slt i64 %6, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare dso_local i64 @GC_SECTORS_USED(%struct.bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
