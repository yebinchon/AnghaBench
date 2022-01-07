; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_begin_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_begin_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_op = type { i32*, %struct.bio*, i32, %struct.thin_c* }
%struct.thin_c = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.discard_op*, %struct.thin_c*, %struct.bio*)* @begin_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @begin_discard(%struct.discard_op* %0, %struct.thin_c* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.discard_op*, align 8
  %5 = alloca %struct.thin_c*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.discard_op* %0, %struct.discard_op** %4, align 8
  store %struct.thin_c* %1, %struct.thin_c** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = icmp ne %struct.bio* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %13 = load %struct.discard_op*, %struct.discard_op** %4, align 8
  %14 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %13, i32 0, i32 3
  store %struct.thin_c* %12, %struct.thin_c** %14, align 8
  %15 = load %struct.discard_op*, %struct.discard_op** %4, align 8
  %16 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %15, i32 0, i32 2
  %17 = call i32 @blk_start_plug(i32* %16)
  %18 = load %struct.bio*, %struct.bio** %6, align 8
  %19 = load %struct.discard_op*, %struct.discard_op** %4, align 8
  %20 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %19, i32 0, i32 1
  store %struct.bio* %18, %struct.bio** %20, align 8
  %21 = load %struct.discard_op*, %struct.discard_op** %4, align 8
  %22 = getelementptr inbounds %struct.discard_op, %struct.discard_op* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @blk_start_plug(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
