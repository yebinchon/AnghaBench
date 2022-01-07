; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ocores.c_ocores_process_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocores_i2c = type { i32, i32 }

@STATE_ERROR = common dso_local global i32 0, align 4
@OCI2C_CMD = common dso_local global i32 0, align 4
@OCI2C_CMD_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocores_i2c*)* @ocores_process_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocores_process_timeout(%struct.ocores_i2c* %0) #0 {
  %2 = alloca %struct.ocores_i2c*, align 8
  %3 = alloca i64, align 8
  store %struct.ocores_i2c* %0, %struct.ocores_i2c** %2, align 8
  %4 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %5 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load i32, i32* @STATE_ERROR, align 4
  %9 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %10 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %12 = load i32, i32* @OCI2C_CMD, align 4
  %13 = load i32, i32* @OCI2C_CMD_STOP, align 4
  %14 = call i32 @oc_setreg(%struct.ocores_i2c* %11, i32 %12, i32 %13)
  %15 = load %struct.ocores_i2c*, %struct.ocores_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.ocores_i2c, %struct.ocores_i2c* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @oc_setreg(%struct.ocores_i2c*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
