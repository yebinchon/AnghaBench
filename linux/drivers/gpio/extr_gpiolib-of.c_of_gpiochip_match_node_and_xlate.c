
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct of_phandle_args {scalar_t__ np; } ;
struct gpio_chip {scalar_t__ (* of_xlate ) (struct gpio_chip*,struct of_phandle_args*,int *) ;TYPE_2__* gpiodev; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 scalar_t__ stub1 (struct gpio_chip*,struct of_phandle_args*,int *) ;

__attribute__((used)) static int of_gpiochip_match_node_and_xlate(struct gpio_chip *chip, void *data)
{
 struct of_phandle_args *gpiospec = data;

 return chip->gpiodev->dev.of_node == gpiospec->np &&
    chip->of_xlate &&
    chip->of_xlate(chip, gpiospec, ((void*)0)) >= 0;
}
