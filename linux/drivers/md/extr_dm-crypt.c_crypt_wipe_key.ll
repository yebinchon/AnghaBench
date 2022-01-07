; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_wipe_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_wipe_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypt_config = type { i32, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@DM_CRYPT_KEY_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypt_config*)* @crypt_wipe_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_wipe_key(%struct.crypt_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypt_config*, align 8
  %4 = alloca i32, align 4
  store %struct.crypt_config* %0, %struct.crypt_config** %3, align 8
  %5 = load i32, i32* @DM_CRYPT_KEY_VALID, align 4
  %6 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %7 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %6, i32 0, i32 4
  %8 = call i32 @clear_bit(i32 %5, i32* %7)
  %9 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %10 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %9, i32 0, i32 1
  %11 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %12 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @get_random_bytes(i32* %10, i32 %13)
  %15 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %16 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %21 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.crypt_config*)**
  %25 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %24, align 8
  %26 = icmp ne i32 (%struct.crypt_config*)* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %19
  %28 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %29 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.crypt_config*)**
  %33 = load i32 (%struct.crypt_config*)*, i32 (%struct.crypt_config*)** %32, align 8
  %34 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %35 = call i32 %33(%struct.crypt_config* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %60

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %19, %1
  %42 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %43 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kzfree(i32* %44)
  %46 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %47 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %49 = call i32 @crypt_setkey(%struct.crypt_config* %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %51 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %50, i32 0, i32 1
  %52 = load %struct.crypt_config*, %struct.crypt_config** %3, align 8
  %53 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(i32* %51, i32 0, i32 %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %41, %38
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @crypt_setkey(%struct.crypt_config*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
