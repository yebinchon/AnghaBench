; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_smm_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_smm_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smm_regs = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @i8k_smm_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_smm_func(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smm_regs*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.smm_regs*
  store %struct.smm_regs* %8, %struct.smm_regs** %5, align 8
  %9 = load %struct.smm_regs*, %struct.smm_regs** %5, align 8
  %10 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = call i64 (...) @smp_processor_id()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %1
  %18 = load %struct.smm_regs*, %struct.smm_regs** %5, align 8
  %19 = call i32 asm sideeffect "pushl %eax\0A\09movl 0(%eax),%edx\0A\09push %edx\0A\09movl 4(%eax),%ebx\0A\09movl 8(%eax),%ecx\0A\09movl 12(%eax),%edx\0A\09movl 16(%eax),%esi\0A\09movl 20(%eax),%edi\0A\09popl %eax\0A\09out %al,$$0xb2\0A\09out %al,$$0x84\0A\09xchgl %eax,(%esp)\0A\09movl %ebx,4(%eax)\0A\09movl %ecx,8(%eax)\0A\09movl %edx,12(%eax)\0A\09movl %esi,16(%eax)\0A\09movl %edi,20(%eax)\0A\09popl %edx\0A\09movl %edx,0(%eax)\0A\09lahf\0A\09shrl $$8,%eax\0A\09andl $$1,%eax\0A", "={ax},{ax},~{ebx},~{ecx},~{edx},~{esi},~{edi},~{memory},~{dirflag},~{fpsr},~{flags}"(%struct.smm_regs* %18) #2, !srcloc !2
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17
  %23 = load %struct.smm_regs*, %struct.smm_regs** %5, align 8
  %24 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 65535
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.smm_regs*, %struct.smm_regs** %5, align 8
  %30 = getelementptr inbounds %struct.smm_regs, %struct.smm_regs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %22, %17
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 570, i32 584, i32 615, i32 637, i32 668, i32 699, i32 731, i32 763, i32 795, i32 817, i32 843, i32 869, i32 900, i32 931, i32 962, i32 994, i32 1026, i32 1058, i32 1080, i32 1111, i32 1127, i32 1152}
