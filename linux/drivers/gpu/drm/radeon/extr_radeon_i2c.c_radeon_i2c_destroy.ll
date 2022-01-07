; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_i2c_destroy(%struct.radeon_i2c_chan* %0) #0 {
  %2 = alloca %struct.radeon_i2c_chan*, align 8
  store %struct.radeon_i2c_chan* %0, %struct.radeon_i2c_chan** %2, align 8
  %3 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %2, align 8
  %4 = icmp ne %struct.radeon_i2c_chan* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %2, align 8
  %8 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %11, i32 0, i32 0
  %13 = call i32 @i2c_del_adapter(i32* %12)
  %14 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %2, align 8
  %15 = call i32 @kfree(%struct.radeon_i2c_chan* %14)
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @kfree(%struct.radeon_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
