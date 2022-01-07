; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_write_bdev_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bch_write_bdev_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cached_dev = type { i32, i32, i32, %struct.bio, %struct.closure }
%struct.bio = type { %struct.cached_dev*, i32 }
%struct.closure = type { i32 }

@write_bdev_super_endio = common dso_local global i32 0, align 4
@bch_write_bdev_super_unlock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_write_bdev_super(%struct.cached_dev* %0, %struct.closure* %1) #0 {
  %3 = alloca %struct.cached_dev*, align 8
  %4 = alloca %struct.closure*, align 8
  %5 = alloca %struct.closure*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.cached_dev* %0, %struct.cached_dev** %3, align 8
  store %struct.closure* %1, %struct.closure** %4, align 8
  %7 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %7, i32 0, i32 4
  store %struct.closure* %8, %struct.closure** %5, align 8
  %9 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %10 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %9, i32 0, i32 3
  store %struct.bio* %10, %struct.bio** %6, align 8
  %11 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %12 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %11, i32 0, i32 2
  %13 = call i32 @down(i32* %12)
  %14 = load %struct.closure*, %struct.closure** %5, align 8
  %15 = load %struct.closure*, %struct.closure** %4, align 8
  %16 = call i32 @closure_init(%struct.closure* %14, %struct.closure* %15)
  %17 = load %struct.bio*, %struct.bio** %6, align 8
  %18 = call i32 @bio_reset(%struct.bio* %17)
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %21 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bio_set_dev(%struct.bio* %19, i32 %22)
  %24 = load i32, i32* @write_bdev_super_endio, align 4
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  store %struct.cached_dev* %27, %struct.cached_dev** %29, align 8
  %30 = load %struct.closure*, %struct.closure** %5, align 8
  %31 = call i32 @closure_get(%struct.closure* %30)
  %32 = load %struct.cached_dev*, %struct.cached_dev** %3, align 8
  %33 = getelementptr inbounds %struct.cached_dev, %struct.cached_dev* %32, i32 0, i32 0
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = call i32 @__write_super(i32* %33, %struct.bio* %34)
  %36 = load %struct.closure*, %struct.closure** %5, align 8
  %37 = load i32, i32* @bch_write_bdev_super_unlock, align 4
  %38 = call i32 @closure_return_with_destructor(%struct.closure* %36, i32 %37)
  ret void
}

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @closure_init(%struct.closure*, %struct.closure*) #1

declare dso_local i32 @bio_reset(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @closure_get(%struct.closure*) #1

declare dso_local i32 @__write_super(i32*, %struct.bio*) #1

declare dso_local i32 @closure_return_with_destructor(%struct.closure*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
