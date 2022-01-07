; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_main.c_chtls_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32, %struct.TYPE_4__*, %struct.tls_device }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.tls_device = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"chtls\00", align 1
@TLS_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@chtls_inline_feature = common dso_local global i32 0, align 4
@chtls_create_hash = common dso_local global i32 0, align 4
@chtls_destroy_hash = common dso_local global i32 0, align 4
@chtls_dev_release = common dso_local global i32 0, align 4
@CHTLS_CDEV_STATE_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chtls_dev*)* @chtls_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chtls_register_dev(%struct.chtls_dev* %0) #0 {
  %2 = alloca %struct.chtls_dev*, align 8
  %3 = alloca %struct.tls_device*, align 8
  store %struct.chtls_dev* %0, %struct.chtls_dev** %2, align 8
  %4 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %5 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %4, i32 0, i32 2
  store %struct.tls_device* %5, %struct.tls_device** %3, align 8
  %6 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %7 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TLS_DEVICE_NAME_MAX, align 4
  %10 = call i32 @strlcpy(i32 %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %12 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %15 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TLS_DEVICE_NAME_MAX, align 4
  %24 = call i32 @strlcat(i32 %13, i32 %22, i32 %23)
  %25 = load i32, i32* @chtls_inline_feature, align 4
  %26 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %27 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @chtls_create_hash, align 4
  %29 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %30 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @chtls_destroy_hash, align 4
  %32 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %33 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @chtls_dev_release, align 4
  %35 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %36 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %38 = getelementptr inbounds %struct.tls_device, %struct.tls_device* %37, i32 0, i32 0
  %39 = call i32 @kref_init(i32* %38)
  %40 = load %struct.tls_device*, %struct.tls_device** %3, align 8
  %41 = call i32 @tls_register_device(%struct.tls_device* %40)
  %42 = load i32, i32* @CHTLS_CDEV_STATE_UP, align 4
  %43 = load %struct.chtls_dev*, %struct.chtls_dev** %2, align 8
  %44 = getelementptr inbounds %struct.chtls_dev, %struct.chtls_dev* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @strlcat(i32, i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @tls_register_device(%struct.tls_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
